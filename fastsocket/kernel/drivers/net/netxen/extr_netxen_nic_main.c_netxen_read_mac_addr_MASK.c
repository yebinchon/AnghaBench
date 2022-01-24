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
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {int /*<<< orphan*/  mac_addr; TYPE_1__ ahw; struct pci_dev* pdev; struct net_device* netdev; } ;
struct net_device {unsigned char* dev_addr; int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  addr_len; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct netxen_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct netxen_adapter*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct netxen_adapter *adapter)
{
	int i;
	unsigned char *p;
	u64 mac_addr;
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;

	if (FUNC0(adapter->ahw.revision_id)) {
		if (FUNC5(adapter, &mac_addr) != 0)
			return -EIO;
	} else {
		if (FUNC4(adapter, &mac_addr) != 0)
			return -EIO;
	}

	p = (unsigned char *)&mac_addr;
	for (i = 0; i < 6; i++)
		netdev->dev_addr[i] = *(p + 5 - i);

	FUNC3(netdev->perm_addr, netdev->dev_addr, netdev->addr_len);
	FUNC3(adapter->mac_addr, netdev->dev_addr, netdev->addr_len);

	/* set station address */

	if (!FUNC2(netdev->perm_addr))
		FUNC1(&pdev->dev, "Bad MAC address %pM.\n", netdev->dev_addr);

	return 0;
}