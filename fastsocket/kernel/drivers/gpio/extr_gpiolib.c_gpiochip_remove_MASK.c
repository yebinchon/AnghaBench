#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gpio_chip {unsigned int base; unsigned int ngpio; } ;
struct TYPE_2__ {int /*<<< orphan*/ * chip; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FLAG_REQUESTED ; 
 TYPE_1__* gpio_desc ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct gpio_chip *chip)
{
	unsigned long	flags;
	int		status = 0;
	unsigned	id;

	FUNC1(&gpio_lock, flags);

	for (id = chip->base; id < chip->base + chip->ngpio; id++) {
		if (FUNC3(FLAG_REQUESTED, &gpio_desc[id].flags)) {
			status = -EBUSY;
			break;
		}
	}
	if (status == 0) {
		for (id = chip->base; id < chip->base + chip->ngpio; id++)
			gpio_desc[id].chip = NULL;
	}

	FUNC2(&gpio_lock, flags);

	if (status == 0)
		FUNC0(chip);

	return status;
}