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
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;
struct da903x_chip {int /*<<< orphan*/  notifier_list; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmask_events ) (struct da903x_chip*,unsigned int) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 struct da903x_chip* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct da903x_chip*,unsigned int) ; 

int FUNC3(struct device *dev, struct notifier_block *nb,
				unsigned int events)
{
	struct da903x_chip *chip = FUNC1(dev);

	chip->ops->unmask_events(chip, events);
	return FUNC0(&chip->notifier_list, nb);
}