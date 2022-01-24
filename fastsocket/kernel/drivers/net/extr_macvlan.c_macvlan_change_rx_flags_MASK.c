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
struct net_device {int flags; } ;
struct macvlan_dev {struct net_device* lowerdev; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 struct macvlan_dev* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, int change)
{
	struct macvlan_dev *vlan = FUNC1(dev);
	struct net_device *lowerdev = vlan->lowerdev;

	if (change & IFF_ALLMULTI)
		FUNC0(lowerdev, dev->flags & IFF_ALLMULTI ? 1 : -1);
}