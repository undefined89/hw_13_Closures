//Домашнее задание №6. Замыкания
//1. Составить замыкание, которое считает кол-во букв в нашем предложении, которое мы вводим в консоли.

import Darwin
import Foundation

print("Write a sentence: ")
var sentence = readLine()

//func countCharactersInSentence() -> String {
//    return "Total number of characters in a given sentence: \(sentence!.count)"
//}

// 1st Option
let charactersCounter = { () -> String in return "Total number of characters in a given sentence: \(sentence!.count)" }

// 2nd Option
let charactersCounter1 = { () in return "Total number of characters in a given sentence: \(sentence!.count)" }

// 3rd Option
let charactersCounter2 = { "Total number of characters in a given sentence: \(sentence!.count)" }

print(charactersCounter())
print(charactersCounter1())
print(charactersCounter2())

//2. Составить замыкание, которое переводит наши деньги в курс доллара.

print("-----------------------")
print("Enter any amount of money avalaible for exhange in USD: ")
var amountOfMoney: Double = Double(readLine()!)!
var USDExchangeRate: Double = 82.0

//func exchangeMoneyToUSD(amountOfMoney: Double, USDExchangeRate: Double) -> String {
//    return "\(amountOfMoney) KGS = \(amountOfMoney / USDExchangeRate) USD"
//}

// Самая короткая запись
let moneyExchangerToUSD = { "\(amountOfMoney) KGS = \(amountOfMoney / USDExchangeRate) USD" }

print(moneyExchangerToUSD())

//3. Составить программу с помощью функции sorted(), которая cортирует список имен по кол-ву букв по возрастанию.
//

print("-----------------------")
var names: [String] = ["Philip", "Kenneth", "Max", "Mary", "Penelope", "Leo"]

let sortedNames = names.sorted { $1.count > $0.count }
print("Names sorted by number of letters: \(sortedNames).")

//Доп. задание: написать функцию аналогичную map() вручную используя цикл.
