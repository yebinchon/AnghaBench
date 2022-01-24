#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct regulator_dev {int /*<<< orphan*/  owner; scalar_t__ exclusive; int /*<<< orphan*/  open_count; TYPE_1__ dev; } ;
struct TYPE_5__ {struct regulator* name; } ;
struct TYPE_6__ {TYPE_2__ attr; } ;
struct regulator {int /*<<< orphan*/  list; TYPE_3__ dev_attr; scalar_t__ dev; struct regulator* supply_name; struct regulator_dev* rdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  regulator_list_mutex ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct regulator*) ; 

void FUNC8(struct regulator *regulator)
{
	struct regulator_dev *rdev;

	if (regulator == NULL || FUNC0(regulator))
		return;

	FUNC5(&regulator_list_mutex);
	rdev = regulator->rdev;

	/* remove any sysfs entries */
	if (regulator->dev) {
		FUNC7(&rdev->dev.kobj, regulator->supply_name);
		FUNC2(regulator->supply_name);
		FUNC1(regulator->dev, &regulator->dev_attr);
		FUNC2(regulator->dev_attr.attr.name);
	}
	FUNC3(&regulator->list);
	FUNC2(regulator);

	rdev->open_count--;
	rdev->exclusive = 0;

	FUNC4(rdev->owner);
	FUNC6(&regulator_list_mutex);
}