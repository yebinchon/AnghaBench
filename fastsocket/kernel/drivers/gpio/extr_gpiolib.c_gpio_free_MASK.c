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
struct gpio_chip {int /*<<< orphan*/  owner; scalar_t__ base; int /*<<< orphan*/  (* free ) (struct gpio_chip*,scalar_t__) ;scalar_t__ can_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*,int /*<<< orphan*/ *) ; 
 scalar_t__ extra_checks ; 
 struct gpio_desc* gpio_desc ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct gpio_chip*,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(unsigned gpio)
{
	unsigned long		flags;
	struct gpio_desc	*desc;
	struct gpio_chip	*chip;

	FUNC5();

	if (!FUNC3(gpio)) {
		FUNC0(extra_checks);
		return;
	}

	FUNC4(gpio);

	FUNC8(&gpio_lock, flags);

	desc = &gpio_desc[gpio];
	chip = desc->chip;
	if (chip && FUNC11(FLAG_REQUESTED, &desc->flags)) {
		if (chip->free) {
			FUNC9(&gpio_lock, flags);
			FUNC6(extra_checks && chip->can_sleep);
			chip->free(chip, gpio - chip->base);
			FUNC8(&gpio_lock, flags);
		}
		FUNC2(desc, NULL);
		FUNC7(desc->chip->owner);
		FUNC1(FLAG_REQUESTED, &desc->flags);
	} else
		FUNC0(extra_checks);

	FUNC9(&gpio_lock, flags);
}