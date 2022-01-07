
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long data; int function; } ;
struct vxlan_dev {int port_min; int port_max; int * fdb_head; struct net_device* dev; int dst_port; TYPE_2__ age_timer; int sock_work; int igmp_leave; int igmp_join; int hash_lock; int next; } ;
struct net_device {int features; int vlan_features; int priv_flags; scalar_t__ tx_queue_len; int destructor; int * netdev_ops; scalar_t__ hard_header_len; } ;
struct TYPE_3__ {int ndo_fdb_dump; int ndo_fdb_del; int ndo_fdb_add; int ext_priv_flags; } ;


 scalar_t__ ETH_HLEN ;
 unsigned int FDB_HASH_SIZE ;
 int IFF_LIVE_ADDR_CHANGE ;
 int IFF_XMIT_DST_RELEASE ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NETIF_F_GSO_SOFTWARE ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_HW_VLAN_RX ;
 int NETIF_F_HW_VLAN_TX ;
 int NETIF_F_LLTX ;
 int NETIF_F_NETNS_LOCAL ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 scalar_t__ VXLAN_HEADROOM ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_setup (struct net_device*) ;
 int free_netdev ;
 int htons (int ) ;
 int inet_get_local_port_range (int*,int*) ;
 int init_timer_deferrable (TYPE_2__*) ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;
 int vxlan_cleanup ;
 int vxlan_fdb_add ;
 int vxlan_fdb_delete ;
 int vxlan_fdb_dump ;
 int vxlan_igmp_join ;
 int vxlan_igmp_leave ;
 int vxlan_netdev_ops ;
 int vxlan_port ;
 int vxlan_sock_work ;
 int vxlan_type ;

__attribute__((used)) static void vxlan_setup(struct net_device *dev)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 unsigned int h;
 int low, high;

 eth_hw_addr_random(dev);
 ether_setup(dev);
 dev->hard_header_len = ETH_HLEN + VXLAN_HEADROOM;

 dev->netdev_ops = &vxlan_netdev_ops;
 dev->destructor = free_netdev;
 SET_NETDEV_DEVTYPE(dev, &vxlan_type);

 dev->tx_queue_len = 0;
 dev->features |= NETIF_F_LLTX;
 dev->features |= NETIF_F_NETNS_LOCAL;
 dev->features |= NETIF_F_SG | NETIF_F_HW_CSUM;
 dev->features |= NETIF_F_RXCSUM;
 dev->features |= NETIF_F_GSO_SOFTWARE;

 dev->vlan_features = dev->features;
 dev->features |= NETIF_F_HW_VLAN_TX | NETIF_F_HW_VLAN_RX;
 dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;
 netdev_extended(dev)->ext_priv_flags |= IFF_LIVE_ADDR_CHANGE;
 netdev_extended(dev)->ndo_fdb_add = vxlan_fdb_add;
 netdev_extended(dev)->ndo_fdb_del = vxlan_fdb_delete;
 netdev_extended(dev)->ndo_fdb_dump = vxlan_fdb_dump;

 INIT_LIST_HEAD(&vxlan->next);
 spin_lock_init(&vxlan->hash_lock);
 INIT_WORK(&vxlan->igmp_join, vxlan_igmp_join);
 INIT_WORK(&vxlan->igmp_leave, vxlan_igmp_leave);
 INIT_WORK(&vxlan->sock_work, vxlan_sock_work);

 init_timer_deferrable(&vxlan->age_timer);
 vxlan->age_timer.function = vxlan_cleanup;
 vxlan->age_timer.data = (unsigned long) vxlan;

 inet_get_local_port_range(&low, &high);
 vxlan->port_min = low;
 vxlan->port_max = high;
 vxlan->dst_port = htons(vxlan_port);

 vxlan->dev = dev;

 for (h = 0; h < FDB_HASH_SIZE; ++h)
  INIT_HLIST_HEAD(&vxlan->fdb_head[h]);
}
