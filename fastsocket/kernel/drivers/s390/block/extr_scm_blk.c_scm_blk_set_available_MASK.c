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
struct scm_blk_dev {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_1__* scmdev; } ;
struct TYPE_2__ {scalar_t__ address; } ;

/* Variables and functions */
 scalar_t__ SCM_OPER ; 
 scalar_t__ SCM_WR_PROHIBIT ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct scm_blk_dev *bdev)
{
	unsigned long flags;

	FUNC1(&bdev->lock, flags);
	if (bdev->state == SCM_WR_PROHIBIT)
		FUNC0("%lu: Write access to the SCM increment is restored\n",
			(unsigned long) bdev->scmdev->address);
	bdev->state = SCM_OPER;
	FUNC2(&bdev->lock, flags);
}