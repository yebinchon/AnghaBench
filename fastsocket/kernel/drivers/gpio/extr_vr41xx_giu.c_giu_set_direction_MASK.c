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
typedef  int u16 ;
struct gpio_chip {unsigned int ngpio; } ;

/* Variables and functions */
 int EINVAL ; 
 int GIUIOSELH ; 
 int GIUIOSELL ; 
 int GIUPODATEN ; 
 int GIUPODATH ; 
 int GPIO_HAS_OUTPUT_ENABLE ; 
 int GPIO_OUTPUT ; 
 int PIOEN0 ; 
 int PIOEN1 ; 
 int giu_flags ; 
 int /*<<< orphan*/  giu_lock ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned pin, int dir)
{
	u16 offset, mask, reg;
	unsigned long flags;

	if (pin >= chip->ngpio)
		return -EINVAL;

	if (pin < 16) {
		offset = GIUIOSELL;
		mask = 1 << pin;
	} else if (pin < 32) {
		offset = GIUIOSELH;
		mask = 1 << (pin - 16);
	} else {
		if (giu_flags & GPIO_HAS_OUTPUT_ENABLE) {
			offset = GIUPODATEN;
			mask = 1 << (pin - 32);
		} else {
			switch (pin) {
			case 48:
				offset = GIUPODATH;
				mask = PIOEN0;
				break;
			case 49:
				offset = GIUPODATH;
				mask = PIOEN1;
				break;
			default:
				return -EINVAL;
			}
		}
	}

	FUNC2(&giu_lock, flags);

	reg = FUNC0(offset);
	if (dir == GPIO_OUTPUT)
		reg |= mask;
	else
		reg &= ~mask;
	FUNC1(offset, reg);

	FUNC3(&giu_lock, flags);

	return 0;
}