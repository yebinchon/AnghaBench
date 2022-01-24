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
typedef  scalar_t__ u32 ;
struct net_device {int /*<<< orphan*/  features; } ;
struct igbvf_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETIF_F_TSO ; 
 int /*<<< orphan*/  NETIF_F_TSO6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 struct igbvf_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, u32 data)
{
	struct igbvf_adapter *adapter = FUNC1(netdev);

	if (data) {
		netdev->features |= NETIF_F_TSO;
		netdev->features |= NETIF_F_TSO6;
	} else {
		netdev->features &= ~NETIF_F_TSO;
		netdev->features &= ~NETIF_F_TSO6;
	}

	FUNC0(&adapter->pdev->dev, "TSO is %s\n",
	         data ? "Enabled" : "Disabled");
	return 0;
}