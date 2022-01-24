#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int GPIO_AF ; 
 int GPIO_AOUT_SHIFT ; 
 int GPIO_BOUT_SHIFT ; 
 int GPIO_OCR_MASK ; 
 int GPIO_OCR_SHIFT ; 
 int GPIO_OUT ; 
 int GPIO_PF ; 
 int GPIO_PIN_MASK ; 
 int GPIO_PORT_MASK ; 
 int GPIO_PORT_SHIFT ; 
 int GPIO_PUEN ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int) ; 
 scalar_t__ FUNC9 (unsigned int) ; 
 scalar_t__ VA_GPIO_BASE ; 
 unsigned int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,scalar_t__) ; 

void FUNC12(int gpio_mode)
{
	unsigned int pin = gpio_mode & GPIO_PIN_MASK;
	unsigned int port = (gpio_mode & GPIO_PORT_MASK) >> GPIO_PORT_SHIFT;
	unsigned int ocr = (gpio_mode & GPIO_OCR_MASK) >> GPIO_OCR_SHIFT;
	unsigned int tmp;

	/* Pullup enable */
	tmp = FUNC10(VA_GPIO_BASE + FUNC9(port));
	if (gpio_mode & GPIO_PUEN)
		tmp |= (1 << pin);
	else
		tmp &= ~(1 << pin);
	FUNC11(tmp, VA_GPIO_BASE + FUNC9(port));

	/* Data direction */
	tmp = FUNC10(VA_GPIO_BASE + FUNC0(port));
	if (gpio_mode & GPIO_OUT)
		tmp |= 1 << pin;
	else
		tmp &= ~(1 << pin);
	FUNC11(tmp, VA_GPIO_BASE + FUNC0(port));

	/* Primary / alternate function */
	tmp = FUNC10(VA_GPIO_BASE + FUNC2(port));
	if (gpio_mode & GPIO_AF)
		tmp |= (1 << pin);
	else
		tmp &= ~(1 << pin);
	FUNC11(tmp, VA_GPIO_BASE + FUNC2(port));

	/* use as gpio? */
	tmp = FUNC10(VA_GPIO_BASE + FUNC1(port));
	if (gpio_mode & (GPIO_PF | GPIO_AF))
		tmp &= ~(1 << pin);
	else
		tmp |= (1 << pin);
	FUNC11(tmp, VA_GPIO_BASE + FUNC1(port));

	if (pin < 16) {
		tmp = FUNC10(VA_GPIO_BASE + FUNC7(port));
		tmp &= ~(3 << (pin * 2));
		tmp |= (ocr << (pin * 2));
		FUNC11(tmp, VA_GPIO_BASE + FUNC7(port));

		tmp = FUNC10(VA_GPIO_BASE + FUNC3(port));
		tmp &= ~(3 << (pin * 2));
		tmp |= ((gpio_mode >> GPIO_AOUT_SHIFT) & 3) << (pin * 2);
		FUNC11(tmp, VA_GPIO_BASE + FUNC3(port));

		tmp = FUNC10(VA_GPIO_BASE + FUNC5(port));
		tmp &= ~(3 << (pin * 2));
		tmp |= ((gpio_mode >> GPIO_BOUT_SHIFT) & 3) << (pin * 2);
		FUNC11(tmp, VA_GPIO_BASE + FUNC5(port));
	} else {
		pin -= 16;

		tmp = FUNC10(VA_GPIO_BASE + FUNC8(port));
		tmp &= ~(3 << (pin * 2));
		tmp |= (ocr << (pin * 2));
		FUNC11(tmp, VA_GPIO_BASE + FUNC8(port));

		tmp = FUNC10(VA_GPIO_BASE + FUNC4(port));
		tmp &= ~(3 << (pin * 2));
		tmp |= ((gpio_mode >> GPIO_AOUT_SHIFT) & 3) << (pin * 2);
		FUNC11(tmp, VA_GPIO_BASE + FUNC4(port));

		tmp = FUNC10(VA_GPIO_BASE + FUNC6(port));
		tmp &= ~(3 << (pin * 2));
		tmp |= ((gpio_mode >> GPIO_BOUT_SHIFT) & 3) << (pin * 2);
		FUNC11(tmp, VA_GPIO_BASE + FUNC6(port));
	}
}