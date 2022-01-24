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
struct ldc_channel {scalar_t__ hs_state; int /*<<< orphan*/  lock; TYPE_1__* mops; } ;
struct TYPE_2__ {int (* read ) (struct ldc_channel*,void*,unsigned int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 scalar_t__ LDC_HS_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct ldc_channel*,void*,unsigned int) ; 

int FUNC3(struct ldc_channel *lp, void *buf, unsigned int size)
{
	unsigned long flags;
	int err;

	if (!buf)
		return -EINVAL;

	if (!size)
		return 0;

	FUNC0(&lp->lock, flags);

	if (lp->hs_state != LDC_HS_COMPLETE)
		err = -ENOTCONN;
	else
		err = lp->mops->read(lp, buf, size);

	FUNC1(&lp->lock, flags);

	return err;
}