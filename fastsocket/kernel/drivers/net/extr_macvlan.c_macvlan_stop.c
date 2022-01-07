
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; int dev_addr; } ;
struct macvlan_dev {TYPE_1__* port; struct net_device* lowerdev; } ;
struct TYPE_2__ {scalar_t__ passthru; } ;


 int IFF_ALLMULTI ;
 int dev_mc_unsync (struct net_device*,struct net_device*) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_unicast_delete (struct net_device*,int ) ;
 int macvlan_hash_del (struct macvlan_dev*) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int macvlan_stop(struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct net_device *lowerdev = vlan->lowerdev;

 dev_mc_unsync(lowerdev, dev);
 if (dev->flags & IFF_ALLMULTI)
  dev_set_allmulti(lowerdev, -1);

 if (vlan->port->passthru) {
  dev_set_promiscuity(lowerdev, -1);
  goto hash_del;
 }

 dev_unicast_delete(lowerdev, dev->dev_addr);

hash_del:
 macvlan_hash_del(vlan);
 return 0;
}
