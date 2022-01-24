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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;
struct macvlan_dev {int /*<<< orphan*/  port; struct net_device* lowerdev; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IFF_UP ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct macvlan_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct macvlan_dev* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, void *p)
{
	struct macvlan_dev *vlan = FUNC6(dev);
	struct net_device *lowerdev = vlan->lowerdev;
	struct sockaddr *addr = p;
	int err;

	if (!FUNC2(addr->sa_data))
		return -EADDRNOTAVAIL;

	if (!(dev->flags & IFF_UP)) {
		/* Just copy in the new address */
		FUNC5(dev->dev_addr, addr->sa_data, ETH_ALEN);
	} else {
		/* Rehash and update the device filters */
		if (FUNC3(vlan->port, addr->sa_data))
			return -EBUSY;

		err = FUNC0(lowerdev, addr->sa_data);
		if (err)
			return err;

		FUNC1(lowerdev, dev->dev_addr);

		FUNC4(vlan, addr->sa_data);
	}
	return 0;
}