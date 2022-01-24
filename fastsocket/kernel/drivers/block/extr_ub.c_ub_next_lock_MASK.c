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
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 size_t UB_QLOCK_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  ub_lock ; 
 size_t ub_qlock_next ; 
 int /*<<< orphan*/ * ub_qlockv ; 

__attribute__((used)) static spinlock_t *FUNC2(void)
{
	unsigned long flags;
	spinlock_t *ret;

	FUNC0(&ub_lock, flags);
	ret = &ub_qlockv[ub_qlock_next];
	ub_qlock_next = (ub_qlock_next + 1) % UB_QLOCK_NUM;
	FUNC1(&ub_lock, flags);
	return ret;
}