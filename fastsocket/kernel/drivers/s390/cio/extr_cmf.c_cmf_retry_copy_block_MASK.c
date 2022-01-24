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
struct copy_block_struct {int /*<<< orphan*/  kref; int /*<<< orphan*/  wait; int /*<<< orphan*/  ret; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {struct copy_block_struct* cmb_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  cmf_copy_block_release ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ccw_device *cdev)
{
	struct copy_block_struct *copy_block;

	copy_block = cdev->private->cmb_wait;
	if (!copy_block) {
		FUNC0(1);
		return;
	}
	FUNC2(&copy_block->kref);
	copy_block->ret = FUNC1(cdev);
	FUNC4(&copy_block->wait);
	FUNC3(&copy_block->kref, cmf_copy_block_release);
}