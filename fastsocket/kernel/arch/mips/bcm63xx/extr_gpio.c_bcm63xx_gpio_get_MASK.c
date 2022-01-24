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
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned gpio)
{
	u32 reg;
	u32 mask;

	if (gpio >= chip->ngpio)
		FUNC0();

	if (gpio < 32) {
		reg = GPIO_DATA_LO_REG;
		mask = 1 << gpio;
	} else {
		reg = GPIO_DATA_HI_REG;
		mask = 1 << (gpio - 32);
	}

	return !!(FUNC1(reg) & mask);
}