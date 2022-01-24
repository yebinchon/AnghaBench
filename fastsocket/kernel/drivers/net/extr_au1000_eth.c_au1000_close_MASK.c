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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct au1000_private {int /*<<< orphan*/  lock; scalar_t__ phy_dev; } ;

/* Variables and functions */
 int au1000_debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct au1000_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	unsigned long flags;
	struct au1000_private *const aup = FUNC1(dev);

	if (au1000_debug > 4)
		FUNC4("%s: close: dev=%p\n", dev->name, dev);

	if (aup->phy_dev)
		FUNC3(aup->phy_dev);

	FUNC6(&aup->lock, flags);

	FUNC5 (dev);

	/* stop the device */
	FUNC2(dev);

	/* disable the interrupt */
	FUNC0(dev->irq, dev);
	FUNC7(&aup->lock, flags);

	return 0;
}