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
struct net_device {int flags; int features; int /*<<< orphan*/  priv_flags; scalar_t__ tx_queue_len; int /*<<< orphan*/  destructor; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_4__ {scalar_t__ arp_interval; int /*<<< orphan*/  mode; } ;
struct bonding {TYPE_2__ params; int /*<<< orphan*/  vlan_list; struct net_device* dev; int /*<<< orphan*/  curr_slave_lock; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  ext_priv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_BONDING ; 
 int IFF_MASTER ; 
 int /*<<< orphan*/  IFF_MASTER_ARPMON ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  IFF_TX_SKB_SHARING ; 
 int /*<<< orphan*/  IFF_XMIT_DST_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NETIF_F_GRO ; 
 int NETIF_F_HW_VLAN_FILTER ; 
 int NETIF_F_HW_VLAN_RX ; 
 int NETIF_F_HW_VLAN_TX ; 
 int NETIF_F_LLTX ; 
 int NETIF_F_LRO ; 
 int NETIF_F_VLAN_CHALLENGED ; 
 int /*<<< orphan*/  bond_destructor ; 
 int /*<<< orphan*/  bond_ethtool_ops ; 
 int /*<<< orphan*/  bond_netdev_ops ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*,int /*<<< orphan*/ ) ; 
 TYPE_2__ bonding_defaults ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 TYPE_1__* FUNC3 (struct net_device*) ; 
 struct bonding* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *bond_dev)
{
	struct bonding *bond = FUNC4(bond_dev);

	/* initialize rwlocks */
	FUNC5(&bond->lock);
	FUNC5(&bond->curr_slave_lock);

	bond->params = bonding_defaults;

	/* Initialize pointers */
	bond->dev = bond_dev;
	FUNC0(&bond->vlan_list);

	/* Initialize the device entry points */
	FUNC2(bond_dev);
	bond_dev->netdev_ops = &bond_netdev_ops;
	bond_dev->ethtool_ops = &bond_ethtool_ops;
	FUNC1(bond, bond->params.mode);

	bond_dev->destructor = bond_destructor;

	/* Initialize the device options */
	bond_dev->tx_queue_len = 0;
	bond_dev->flags |= IFF_MASTER|IFF_MULTICAST;
	bond_dev->priv_flags |= IFF_BONDING;
	bond_dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;
	FUNC3(bond_dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;

	if (bond->params.arp_interval)
		bond_dev->priv_flags |= IFF_MASTER_ARPMON;

	/* At first, we block adding VLANs. That's the only way to
	 * prevent problems that occur when adding VLANs over an
	 * empty bond. The block will be removed once non-challenged
	 * slaves are enslaved.
	 */
	bond_dev->features |= NETIF_F_VLAN_CHALLENGED;

	/* don't acquire bond device's netif_tx_lock when
	 * transmitting */
	bond_dev->features |= NETIF_F_LLTX;

	/*
	 * Mark bond as supporting LRO
	 */
	bond_dev->features |= NETIF_F_LRO;

	/* By default, we declare the bond to be fully
	 * VLAN hardware accelerated capable. Special
	 * care is taken in the various xmit functions
	 * when there are slaves that are not hw accel
	 * capable
	 */
	bond_dev->features |= (NETIF_F_HW_VLAN_TX |
			       NETIF_F_HW_VLAN_RX |
			       NETIF_F_HW_VLAN_FILTER);

	/* By default, we enable GRO on bonding devices.
	 * Actual support requires lowlevel drivers are GRO ready.
	 */
	bond_dev->features |= NETIF_F_GRO;
}