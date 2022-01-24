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
typedef  int /*<<< orphan*/  u8 ;
struct qlcnic_adapter {int /*<<< orphan*/ * mac_addr; struct pci_dev* pdev; struct net_device* netdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int addr_len; int /*<<< orphan*/ * dev_addr; int /*<<< orphan*/ * perm_addr; } ;

/* Variables and functions */
 int EIO ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*,int /*<<< orphan*/ *) ; 

int FUNC4(struct qlcnic_adapter *adapter)
{
	u8 mac_addr[ETH_ALEN];
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;

	if (FUNC3(adapter, mac_addr) != 0)
		return -EIO;

	FUNC2(netdev->dev_addr, mac_addr, ETH_ALEN);
	FUNC2(netdev->perm_addr, netdev->dev_addr, netdev->addr_len);
	FUNC2(adapter->mac_addr, netdev->dev_addr, netdev->addr_len);

	/* set station address */

	if (!FUNC1(netdev->perm_addr))
		FUNC0(&pdev->dev, "Bad MAC address %pM.\n",
					netdev->dev_addr);

	return 0;
}