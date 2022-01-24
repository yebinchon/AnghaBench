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
typedef  int u32 ;
struct gpio_chip {unsigned int ngpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int GPIO_DATA_HI_REG ; 
 int GPIO_DATA_LO_REG ; 
 int /*<<< orphan*/  bcm63xx_gpio_lock ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int gpio_out_high ; 
 int gpio_out_low ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip,
			     unsigned gpio, int val)
{
	u32 reg;
	u32 mask;
	u32 *v;
	unsigned long flags;

	if (gpio >= chip->ngpio)
		FUNC0();

	if (gpio < 32) {
		reg = GPIO_DATA_LO_REG;
		mask = 1 << gpio;
		v = &gpio_out_low;
	} else {
		reg = GPIO_DATA_HI_REG;
		mask = 1 << (gpio - 32);
		v = &gpio_out_high;
	}

	FUNC2(&bcm63xx_gpio_lock, flags);
	if (val)
		*v |= mask;
	else
		*v &= ~mask;
	FUNC1(*v, reg);
	FUNC3(&bcm63xx_gpio_lock, flags);
}