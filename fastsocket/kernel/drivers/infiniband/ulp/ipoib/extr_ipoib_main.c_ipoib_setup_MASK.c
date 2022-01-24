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
struct net_device {int flags; int tx_queue_len; int features; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  type; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  hard_header_len; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * header_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  neigh_reap_task; int /*<<< orphan*/  ah_reap_task; int /*<<< orphan*/  restart_task; int /*<<< orphan*/  flush_heavy; int /*<<< orphan*/  flush_normal; int /*<<< orphan*/  flush_light; int /*<<< orphan*/  carrier_on_task; int /*<<< orphan*/  mcast_task; int /*<<< orphan*/  pkey_poll_task; int /*<<< orphan*/  multicast_list; int /*<<< orphan*/  dead_ahs; int /*<<< orphan*/  child_intfs; int /*<<< orphan*/  path_list; int /*<<< orphan*/  vlan_mutex; int /*<<< orphan*/  lock; struct net_device* dev; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_INFINIBAND ; 
 int /*<<< orphan*/  HZ ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  IFF_XMIT_DST_RELEASE ; 
 int /*<<< orphan*/  INFINIBAND_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPOIB_ENCAP_LEN ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_VLAN_CHALLENGED ; 
 int /*<<< orphan*/  ipoib_header_ops ; 
 int /*<<< orphan*/  ipoib_ib_dev_flush_heavy ; 
 int /*<<< orphan*/  ipoib_ib_dev_flush_light ; 
 int /*<<< orphan*/  ipoib_ib_dev_flush_normal ; 
 int /*<<< orphan*/  ipoib_mcast_carrier_on_task ; 
 int /*<<< orphan*/  ipoib_mcast_join_task ; 
 int /*<<< orphan*/  ipoib_mcast_restart_task ; 
 int /*<<< orphan*/  ipoib_netdev_ops ; 
 int /*<<< orphan*/  ipoib_pkey_poll ; 
 int /*<<< orphan*/  ipoib_poll ; 
 int /*<<< orphan*/  ipoib_reap_ah ; 
 int /*<<< orphan*/  ipoib_reap_neigh ; 
 int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  ipv4_bcast_addr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC6(dev);

	dev->netdev_ops		 = &ipoib_netdev_ops;
	dev->header_ops		 = &ipoib_header_ops;

	FUNC3(dev);

	FUNC7(dev, &priv->napi, ipoib_poll, 100);

	dev->watchdog_timeo	 = HZ;

	dev->flags		|= IFF_BROADCAST | IFF_MULTICAST;

	dev->hard_header_len	 = IPOIB_ENCAP_LEN;
	dev->addr_len		 = INFINIBAND_ALEN;
	dev->type		 = ARPHRD_INFINIBAND;
	dev->tx_queue_len	 = ipoib_sendq_size * 2;
	dev->features		 = (NETIF_F_VLAN_CHALLENGED	|
				    NETIF_F_HIGHDMA);
	dev->priv_flags		&= ~IFF_XMIT_DST_RELEASE;

	FUNC4(dev->broadcast, ipv4_bcast_addr, INFINIBAND_ALEN);

	priv->dev = dev;

	FUNC8(&priv->lock);

	FUNC5(&priv->vlan_mutex);

	FUNC1(&priv->path_list);
	FUNC1(&priv->child_intfs);
	FUNC1(&priv->dead_ahs);
	FUNC1(&priv->multicast_list);

	FUNC0(&priv->pkey_poll_task, ipoib_pkey_poll);
	FUNC0(&priv->mcast_task,   ipoib_mcast_join_task);
	FUNC2(&priv->carrier_on_task, ipoib_mcast_carrier_on_task);
	FUNC2(&priv->flush_light,   ipoib_ib_dev_flush_light);
	FUNC2(&priv->flush_normal,   ipoib_ib_dev_flush_normal);
	FUNC2(&priv->flush_heavy,   ipoib_ib_dev_flush_heavy);
	FUNC2(&priv->restart_task, ipoib_mcast_restart_task);
	FUNC0(&priv->ah_reap_task, ipoib_reap_ah);
	FUNC0(&priv->neigh_reap_task, ipoib_reap_neigh);
}