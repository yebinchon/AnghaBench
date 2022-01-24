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
typedef  scalar_t__ u32 ;
struct cmb_data {int /*<<< orphan*/  hw_block; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {struct cmb_data* cmb; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ccw_device*,scalar_t__,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ccw_device *cdev, u32 mme)
{
	unsigned long mba;
	struct cmb_data *cmb_data;
	unsigned long flags;

	FUNC2(cdev->ccwlock, flags);
	if (!cdev->private->cmb) {
		FUNC3(cdev->ccwlock, flags);
		return -EINVAL;
	}
	cmb_data = cdev->private->cmb;
	mba = mme ? (unsigned long) FUNC0(cmb_data->hw_block) : 0;
	FUNC3(cdev->ccwlock, flags);

	return FUNC1(cdev, mme, 1, mba);
}