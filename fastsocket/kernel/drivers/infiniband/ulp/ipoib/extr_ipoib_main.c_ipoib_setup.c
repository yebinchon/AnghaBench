
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int tx_queue_len; int features; int broadcast; int priv_flags; int type; int addr_len; int hard_header_len; int watchdog_timeo; int * header_ops; int * netdev_ops; } ;
struct ipoib_dev_priv {int neigh_reap_task; int ah_reap_task; int restart_task; int flush_heavy; int flush_normal; int flush_light; int carrier_on_task; int mcast_task; int pkey_poll_task; int multicast_list; int dead_ahs; int child_intfs; int path_list; int vlan_mutex; int lock; struct net_device* dev; int napi; } ;


 int ARPHRD_INFINIBAND ;
 int HZ ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_XMIT_DST_RELEASE ;
 int INFINIBAND_ALEN ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IPOIB_ENCAP_LEN ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_VLAN_CHALLENGED ;
 int ipoib_header_ops ;
 int ipoib_ib_dev_flush_heavy ;
 int ipoib_ib_dev_flush_light ;
 int ipoib_ib_dev_flush_normal ;
 int ipoib_mcast_carrier_on_task ;
 int ipoib_mcast_join_task ;
 int ipoib_mcast_restart_task ;
 int ipoib_netdev_ops ;
 int ipoib_pkey_poll ;
 int ipoib_poll ;
 int ipoib_reap_ah ;
 int ipoib_reap_neigh ;
 int ipoib_sendq_size ;
 int ipoib_set_ethtool_ops (struct net_device*) ;
 int ipv4_bcast_addr ;
 int memcpy (int ,int ,int ) ;
 int mutex_init (int *) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int spin_lock_init (int *) ;

void ipoib_setup(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);

 dev->netdev_ops = &ipoib_netdev_ops;
 dev->header_ops = &ipoib_header_ops;

 ipoib_set_ethtool_ops(dev);

 netif_napi_add(dev, &priv->napi, ipoib_poll, 100);

 dev->watchdog_timeo = HZ;

 dev->flags |= IFF_BROADCAST | IFF_MULTICAST;

 dev->hard_header_len = IPOIB_ENCAP_LEN;
 dev->addr_len = INFINIBAND_ALEN;
 dev->type = ARPHRD_INFINIBAND;
 dev->tx_queue_len = ipoib_sendq_size * 2;
 dev->features = (NETIF_F_VLAN_CHALLENGED |
        NETIF_F_HIGHDMA);
 dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;

 memcpy(dev->broadcast, ipv4_bcast_addr, INFINIBAND_ALEN);

 priv->dev = dev;

 spin_lock_init(&priv->lock);

 mutex_init(&priv->vlan_mutex);

 INIT_LIST_HEAD(&priv->path_list);
 INIT_LIST_HEAD(&priv->child_intfs);
 INIT_LIST_HEAD(&priv->dead_ahs);
 INIT_LIST_HEAD(&priv->multicast_list);

 INIT_DELAYED_WORK(&priv->pkey_poll_task, ipoib_pkey_poll);
 INIT_DELAYED_WORK(&priv->mcast_task, ipoib_mcast_join_task);
 INIT_WORK(&priv->carrier_on_task, ipoib_mcast_carrier_on_task);
 INIT_WORK(&priv->flush_light, ipoib_ib_dev_flush_light);
 INIT_WORK(&priv->flush_normal, ipoib_ib_dev_flush_normal);
 INIT_WORK(&priv->flush_heavy, ipoib_ib_dev_flush_heavy);
 INIT_WORK(&priv->restart_task, ipoib_mcast_restart_task);
 INIT_DELAYED_WORK(&priv->ah_reap_task, ipoib_reap_ah);
 INIT_DELAYED_WORK(&priv->neigh_reap_task, ipoib_reap_neigh);
}
