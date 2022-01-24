#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_7__ {scalar_t__ next; TYPE_1__* dev; } ;
typedef  TYPE_2__ isdn_net_dev ;
struct TYPE_8__ {TYPE_2__* netdev; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ISDN_TIMER_NETHANGUP ; 
 TYPE_5__* dev ; 
 int FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int
FUNC5(char *name)
{
	u_long flags;
	isdn_net_dev *p;
	isdn_net_dev *q;

	/* Search name in netdev-chain */
	FUNC2(&dev->lock, flags);
	p = dev->netdev;
	q = NULL;
	while (p) {
		if (!FUNC4(p->dev->name, name)) {
			FUNC3(&dev->lock, flags);
			return (FUNC0(p, q));
		}
		q = p;
		p = (isdn_net_dev *) p->next;
	}
	FUNC3(&dev->lock, flags);
	/* If no more net-devices remain, disable auto-hangup timer */
	if (dev->netdev == NULL)
		FUNC1(ISDN_TIMER_NETHANGUP, 0);
	return -ENODEV;
}