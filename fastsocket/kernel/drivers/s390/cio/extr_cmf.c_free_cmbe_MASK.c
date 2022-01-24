#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cmb_data {struct cmb_data* last_block; } ;
struct ccw_device {TYPE_1__* private; int /*<<< orphan*/  ccwlock; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmb_list; struct cmb_data* cmb; } ;

/* Variables and functions */
 TYPE_2__ cmb_area ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmb_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ccw_device *cdev)
{
	struct cmb_data *cmb_data;

	FUNC5(cdev->ccwlock);
	cmb_data = cdev->private->cmb;
	cdev->private->cmb = NULL;
	if (cmb_data)
		FUNC1(cmb_data->last_block);
	FUNC1(cmb_data);
	FUNC7(cdev->ccwlock);

	/* deactivate global measurement if this is the last channel */
	FUNC4(&cmb_area.lock);
	FUNC2(&cdev->private->cmb_list);
	if (FUNC3(&cmb_area.list))
		FUNC0(NULL, 0);
	FUNC6(&cmb_area.lock);
}