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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct regulator_dev {TYPE_1__ dev; scalar_t__ supply; int /*<<< orphan*/  list; int /*<<< orphan*/  open_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  regulator_list_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct regulator_dev*) ; 

void FUNC7(struct regulator_dev *rdev)
{
	if (rdev == NULL)
		return;

	FUNC3(&regulator_list_mutex);
	FUNC0(rdev->open_count);
	FUNC6(rdev);
	FUNC2(&rdev->list);
	if (rdev->supply)
		FUNC5(&rdev->dev.kobj, "supply");
	FUNC1(&rdev->dev);
	FUNC4(&regulator_list_mutex);
}