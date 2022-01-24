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
typedef  scalar_t__ u32 ;
struct qlcnic_adapter {int flags; } ;
struct net_device {int features; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int QLCNIC_ESWITCH_ENABLED ; 
 struct qlcnic_adapter* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, u32 data)
{
	struct qlcnic_adapter *adapter = FUNC0(dev);

	if ((adapter->flags & QLCNIC_ESWITCH_ENABLED &&
	    FUNC1(adapter)))
		return -EOPNOTSUPP;
	if (data)
		dev->features |= (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);
	else
		dev->features &= ~(NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);

	return 0;

}