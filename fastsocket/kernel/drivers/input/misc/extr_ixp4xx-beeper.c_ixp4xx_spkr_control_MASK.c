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
 int /*<<< orphan*/  IXP4XX_GPIO_HIGH ; 
 int /*<<< orphan*/  IXP4XX_GPIO_IN ; 
 int /*<<< orphan*/  IXP4XX_GPIO_LOW ; 
 int /*<<< orphan*/  IXP4XX_GPIO_OUT ; 
 unsigned int* IXP4XX_OSRT2 ; 
 unsigned int IXP4XX_OST_ENABLE ; 
 unsigned int IXP4XX_OST_RELOAD_MASK ; 
 int /*<<< orphan*/  beep_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned int pin, unsigned int count)
{
	unsigned long flags;

	FUNC2(&beep_lock, flags);

	 if (count) {
		FUNC0(pin, IXP4XX_GPIO_OUT);
		FUNC1(pin, IXP4XX_GPIO_LOW);

		*IXP4XX_OSRT2 = (count & ~IXP4XX_OST_RELOAD_MASK) | IXP4XX_OST_ENABLE;
	} else {
		FUNC0(pin, IXP4XX_GPIO_IN);
		FUNC1(pin, IXP4XX_GPIO_HIGH);

		*IXP4XX_OSRT2 = 0;
	}

	FUNC3(&beep_lock, flags);
}