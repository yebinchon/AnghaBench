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
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;
struct macvlan_dev {TYPE_1__* port; struct net_device* lowerdev; } ;
struct TYPE_2__ {scalar_t__ passthru; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct macvlan_dev*) ; 
 struct macvlan_dev* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct macvlan_dev *vlan = FUNC5(dev);
	struct net_device *lowerdev = vlan->lowerdev;

	FUNC0(lowerdev, dev);
	if (dev->flags & IFF_ALLMULTI)
		FUNC1(lowerdev, -1);

	if (vlan->port->passthru) {
		FUNC2(lowerdev, -1);
		goto hash_del;
	}

	FUNC3(lowerdev, dev->dev_addr);

hash_del:
	FUNC4(vlan);
	return 0;
}