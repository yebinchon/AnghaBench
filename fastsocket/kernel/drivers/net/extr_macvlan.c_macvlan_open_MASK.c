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
 int EBUSY ; 
 int IFF_ALLMULTI ; 
 int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct macvlan_dev*) ; 
 struct macvlan_dev* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct macvlan_dev *vlan = FUNC6(dev);
	struct net_device *lowerdev = vlan->lowerdev;
	int err;

	if (vlan->port->passthru) {
		FUNC1(lowerdev, 1);
		goto hash_add;
	}

	err = -EBUSY;
	if (FUNC4(vlan->port, dev->dev_addr))
		goto out;

	err = FUNC2(lowerdev, dev->dev_addr);
	if (err < 0)
		goto out;
	if (dev->flags & IFF_ALLMULTI) {
		err = FUNC0(lowerdev, 1);
		if (err < 0)
			goto del_unicast;
	}

hash_add:
	FUNC5(vlan);
	return 0;

del_unicast:
	FUNC3(lowerdev, dev->dev_addr);
out:
	return err;
}