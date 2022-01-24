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
struct netxen_adapter {int /*<<< orphan*/  (* macaddr_set ) (struct netxen_adapter*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mac_addr; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netxen_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev, void *p)
{
	struct netxen_adapter *adapter = FUNC2(netdev);
	struct sockaddr *addr = p;

	if (!FUNC0(addr->sa_data))
		return -EADDRNOTAVAIL;

	if (FUNC5(netdev)) {
		FUNC4(netdev);
		FUNC6(adapter);
	}

	FUNC1(adapter->mac_addr, addr->sa_data, netdev->addr_len);
	FUNC1(netdev->dev_addr, addr->sa_data, netdev->addr_len);
	adapter->macaddr_set(adapter, addr->sa_data);

	if (FUNC5(netdev)) {
		FUNC3(netdev);
		FUNC7(adapter);
	}
	return 0;
}