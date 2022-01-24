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
struct net_local {TYPE_1__* ndev; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_local*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_local*) ; 
 int /*<<< orphan*/  xemaclite_interrupt ; 
 int /*<<< orphan*/  FUNC6 (struct net_local*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct net_local *lp = (struct net_local *) FUNC1(dev);
	int retval;

	/* Just to be safe, stop the device first */
	FUNC4(lp);

	/* Set the MAC address each time opened */
	FUNC6(lp, dev->dev_addr);

	/* Grab the IRQ */
	retval = FUNC3(dev->irq, &xemaclite_interrupt, 0, dev->name, dev);
	if (retval) {
		FUNC0(&lp->ndev->dev, "Could not allocate interrupt %d\n",
			dev->irq);
		return retval;
	}

	/* Enable Interrupts */
	FUNC5(lp);

	/* We're ready to go */
	FUNC2(dev);

	return 0;
}