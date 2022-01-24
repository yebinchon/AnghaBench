#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* next; TYPE_2__* netdev; scalar_t__ master; } ;
typedef  TYPE_1__ isdn_net_local ;
struct TYPE_8__ {int /*<<< orphan*/  queue_lock; } ;
typedef  TYPE_2__ isdn_net_dev ;
struct TYPE_9__ {TYPE_2__* netdev; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static __inline__ int FUNC4(isdn_net_local *lp)
{
	isdn_net_local *nlp;
	isdn_net_dev *nd;
	unsigned long flags;

	if (!FUNC1(lp))
		return 0;

	if (lp->master)
		nd = FUNC0(lp)->netdev;
	else
		nd = lp->netdev;
	
	FUNC2(&nd->queue_lock, flags);
	nlp = lp->next;
	while (nlp != lp) {
		if (!FUNC1(nlp)) {
			FUNC3(&nd->queue_lock, flags);
			return 0;
		}
		nlp = nlp->next;
	}
	FUNC3(&nd->queue_lock, flags);
	return 1;
}