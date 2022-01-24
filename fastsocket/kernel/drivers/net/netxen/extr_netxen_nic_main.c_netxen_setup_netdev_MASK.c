#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {int rx_csum; int max_mc_count; int capabilities; int /*<<< orphan*/  tx_timeout_task; TYPE_2__* msix_entries; scalar_t__ pci_using_dac; TYPE_1__ ahw; scalar_t__ mc_enabled; struct pci_dev* pdev; } ;
struct net_device {int watchdog_timeo; int features; int vlan_features; int /*<<< orphan*/  irq; int /*<<< orphan*/  mtu; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NETIF_F_GRO ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_HW_VLAN_RX ; 
 int NETIF_F_HW_VLAN_TX ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_LRO ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 int NX_FW_CAPABILITY_FVLANTX ; 
 int NX_FW_CAPABILITY_HW_LRO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  netxen_netdev_ops ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netxen_nic_ethtool_ops ; 
 scalar_t__ FUNC7 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  netxen_tx_timeout_task ; 
 int FUNC8 (struct net_device*) ; 

__attribute__((used)) static int
FUNC9(struct netxen_adapter *adapter,
		struct net_device *netdev)
{
	int err = 0;
	struct pci_dev *pdev = adapter->pdev;

	adapter->rx_csum = 1;
	adapter->mc_enabled = 0;
	if (FUNC1(adapter->ahw.revision_id))
		adapter->max_mc_count = 38;
	else
		adapter->max_mc_count = 16;

	netdev->netdev_ops	   = &netxen_netdev_ops;
	netdev->watchdog_timeo     = 5*HZ;

	FUNC6(netdev, netdev->mtu);

	FUNC2(netdev, &netxen_nic_ethtool_ops);

	netdev->features |= (NETIF_F_SG | NETIF_F_IP_CSUM | NETIF_F_TSO);
	netdev->features |= (NETIF_F_GRO);
	netdev->vlan_features |= (NETIF_F_SG | NETIF_F_IP_CSUM | NETIF_F_TSO);

	if (FUNC1(adapter->ahw.revision_id)) {
		netdev->features |= (NETIF_F_IPV6_CSUM | NETIF_F_TSO6);
		netdev->vlan_features |= (NETIF_F_IPV6_CSUM | NETIF_F_TSO6);
	}

	if (adapter->pci_using_dac) {
		netdev->features |= NETIF_F_HIGHDMA;
		netdev->vlan_features |= NETIF_F_HIGHDMA;
	}

	if (adapter->capabilities & NX_FW_CAPABILITY_FVLANTX)
		netdev->features |= (NETIF_F_HW_VLAN_TX);

	netdev->features |= (NETIF_F_HW_VLAN_RX);

	if (adapter->capabilities & NX_FW_CAPABILITY_HW_LRO)
		netdev->features |= NETIF_F_LRO;

	netdev->irq = adapter->msix_entries[0].vector;

	FUNC0(&adapter->tx_timeout_task, netxen_tx_timeout_task);

	if (FUNC7(adapter))
		FUNC4(&pdev->dev, "failed to read mac addr\n");

	FUNC5(netdev);

	err = FUNC8(netdev);
	if (err) {
		FUNC3(&pdev->dev, "failed to register net device\n");
		return err;
	}

	return 0;
}