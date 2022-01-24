#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  xmit_lock; struct TYPE_6__* next; } ;
typedef  TYPE_1__ isdn_net_local ;
struct TYPE_7__ {int /*<<< orphan*/  queue_lock; TYPE_1__* queue; } ;
typedef  TYPE_2__ isdn_net_dev ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static __inline__ isdn_net_local * FUNC5(isdn_net_dev *nd)
{
	unsigned long flags;
	isdn_net_local *lp;

	FUNC3(&nd->queue_lock, flags);
	lp = nd->queue;         /* get lp on top of queue */
	while (FUNC0(nd->queue)) {
		nd->queue = nd->queue->next;
		if (nd->queue == lp) { /* not found -- should never happen */
			lp = NULL;
			goto errout;
		}
	}
	lp = nd->queue;
	nd->queue = nd->queue->next;
	FUNC4(&nd->queue_lock, flags);
	FUNC2(&lp->xmit_lock);
	FUNC1();
	return lp;
errout:
	FUNC4(&nd->queue_lock, flags);
	return lp;
}