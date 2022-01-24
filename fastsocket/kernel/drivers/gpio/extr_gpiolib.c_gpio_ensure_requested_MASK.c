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
struct gpio_desc {int /*<<< orphan*/  flags; struct gpio_chip* chip; } ;
struct gpio_chip {unsigned int base; scalar_t__ request; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FLAG_REQUESTED ; 
 scalar_t__ FUNC0 (int,char*,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpio_desc *desc, unsigned offset)
{
	const struct gpio_chip *chip = desc->chip;
	const int gpio = chip->base + offset;

	if (FUNC0(FUNC4(FLAG_REQUESTED, &desc->flags) == 0,
			"autorequest GPIO-%d\n", gpio)) {
		if (!FUNC5(chip->owner)) {
			FUNC3("GPIO-%d: module can't be gotten \n", gpio);
			FUNC1(FLAG_REQUESTED, &desc->flags);
			/* lose */
			return -EIO;
		}
		FUNC2(desc, "[auto]");
		/* caller must chip->request() w/o spinlock */
		if (chip->request)
			return 1;
	}
	return 0;
}