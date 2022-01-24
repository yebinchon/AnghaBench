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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int priv_flags; } ;

/* Variables and functions */
 int IFF_802_1Q_VLAN ; 
 struct net_device* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

__attribute__((used)) static inline u16 FUNC2(struct net_device *dev,
				struct net_device **vlan_dev)
{
	if (dev->priv_flags & IFF_802_1Q_VLAN) {
		*vlan_dev = FUNC0(dev);
		return FUNC1(dev);
	}
	*vlan_dev = dev;
	return 0;
}