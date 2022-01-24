#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct qib_pportdata {int state_wanted; int lflags; int /*<<< orphan*/  lflags_lock; int /*<<< orphan*/  state_wait; } ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct qib_pportdata *ppd, u32 state, int msecs)
{
	int ret;
	unsigned long flags;

	FUNC1(&ppd->lflags_lock, flags);
	if (ppd->state_wanted) {
		FUNC2(&ppd->lflags_lock, flags);
		ret = -EBUSY;
		goto bail;
	}
	ppd->state_wanted = state;
	FUNC2(&ppd->lflags_lock, flags);
	FUNC3(ppd->state_wait,
					 (ppd->lflags & state),
					 FUNC0(msecs));
	FUNC1(&ppd->lflags_lock, flags);
	ppd->state_wanted = 0;
	FUNC2(&ppd->lflags_lock, flags);

	if (!(ppd->lflags & state))
		ret = -ETIMEDOUT;
	else
		ret = 0;
bail:
	return ret;
}