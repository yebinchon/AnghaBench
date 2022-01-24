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
struct cmbe {int size; struct cmbe* last_block; struct cmbe* hw_block; } ;
struct cmb_data {int size; struct cmb_data* last_block; struct cmb_data* hw_block; } ;
struct ccw_device {TYPE_1__* private; int /*<<< orphan*/  ccwlock; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmb_list; struct cmbe* cmb; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__ cmb_area ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cmbe*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ccw_device *cdev)
{
	struct cmbe *cmbe;
	struct cmb_data *cmb_data;
	int ret;

	cmbe = FUNC2 (sizeof (*cmbe) * 2, GFP_KERNEL);
	if (!cmbe)
		return -ENOMEM;
	cmb_data = FUNC2(sizeof(struct cmb_data), GFP_KERNEL);
	if (!cmb_data) {
		ret = -ENOMEM;
		goto out_free;
	}
	cmb_data->last_block = FUNC2(sizeof(struct cmbe), GFP_KERNEL);
	if (!cmb_data->last_block) {
		ret = -ENOMEM;
		goto out_free;
	}
	cmb_data->size = sizeof(struct cmbe);
	FUNC6(cdev->ccwlock);
	if (cdev->private->cmb) {
		FUNC8(cdev->ccwlock);
		ret = -EBUSY;
		goto out_free;
	}
	cmb_data->hw_block = cmbe;
	cdev->private->cmb = cmb_data;
	FUNC8(cdev->ccwlock);

	/* activate global measurement if this is the first channel */
	FUNC5(&cmb_area.lock);
	if (FUNC4(&cmb_area.list))
		FUNC0(NULL, 1);
	FUNC3(&cdev->private->cmb_list, &cmb_area.list);
	FUNC7(&cmb_area.lock);

	return 0;
out_free:
	if (cmb_data)
		FUNC1(cmb_data->last_block);
	FUNC1(cmb_data);
	FUNC1(cmbe);
	return ret;
}