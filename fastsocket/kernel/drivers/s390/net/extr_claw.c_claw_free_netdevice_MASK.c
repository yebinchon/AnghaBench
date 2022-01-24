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
struct net_device {int flags; struct claw_privbk* ml_priv; int /*<<< orphan*/  name; } ;
struct claw_privbk {TYPE_1__* channel; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int IFF_RUNNING ; 
 size_t READ ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  setup ; 

__attribute__((used)) static void
FUNC4(struct net_device * dev, int free_dev)
{
	struct claw_privbk *privptr;

	FUNC0(2, setup, "free_dev");
	if (!dev)
		return;
	FUNC1(2, setup, "%s", dev->name);
	privptr = dev->ml_priv;
	if (dev->flags & IFF_RUNNING)
		FUNC2(dev);
	if (privptr) {
		privptr->channel[READ].ndev = NULL;  /* say it's free */
	}
	dev->ml_priv = NULL;
#ifdef MODULE
	if (free_dev) {
		free_netdev(dev);
	}
#endif
	FUNC0(2, setup, "free_ok");
}