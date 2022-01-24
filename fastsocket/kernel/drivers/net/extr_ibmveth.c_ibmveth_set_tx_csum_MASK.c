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
struct net_device {int features; } ;
struct ibmveth_adapter {int /*<<< orphan*/  rx_csum; } ;

/* Variables and functions */
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int FUNC0 (struct net_device*,scalar_t__,int /*<<< orphan*/  (*) (struct net_device*,scalar_t__)) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,scalar_t__) ; 
 struct ibmveth_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, u32 data)
{
	struct ibmveth_adapter *adapter = FUNC2(dev);
	int rc = 0;

	if (data && (dev->features & (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM)))
		return 0;
	if (!data && !(dev->features & (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM)))
		return 0;

	if (data && !adapter->rx_csum)
		rc = FUNC0(dev, data,
					      ibmveth_set_tx_csum_flags);
	else
		FUNC1(dev, data);

	return rc;
}