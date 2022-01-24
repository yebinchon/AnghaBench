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
struct TYPE_2__ {scalar_t__ mode; } ;
struct ldc_channel {int flags; scalar_t__ hs_state; int /*<<< orphan*/  lock; TYPE_1__ cfg; } ;

/* Variables and functions */
 int EINVAL ; 
 int LDC_FLAG_ALLOCED_QUEUES ; 
 int LDC_FLAG_REGISTERED_QUEUES ; 
 scalar_t__ LDC_HS_OPEN ; 
 scalar_t__ LDC_MODE_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct ldc_channel*) ; 

int FUNC3(struct ldc_channel *lp)
{
	unsigned long flags;
	int err;

	if (lp->cfg.mode == LDC_MODE_RAW)
		return -EINVAL;

	FUNC0(&lp->lock, flags);

	if (!(lp->flags & LDC_FLAG_ALLOCED_QUEUES) ||
	    !(lp->flags & LDC_FLAG_REGISTERED_QUEUES) ||
	    lp->hs_state != LDC_HS_OPEN)
		err = -EINVAL;
	else
		err = FUNC2(lp);

	FUNC1(&lp->lock, flags);

	return err;
}