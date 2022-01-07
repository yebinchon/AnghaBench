
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; int dev_addr; } ;
struct macvlan_dev {TYPE_1__* port; struct net_device* lowerdev; } ;
struct TYPE_2__ {scalar_t__ passthru; } ;


 int EBUSY ;
 int IFF_ALLMULTI ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_unicast_add (struct net_device*,int ) ;
 int dev_unicast_delete (struct net_device*,int ) ;
 scalar_t__ macvlan_addr_busy (TYPE_1__*,int ) ;
 int macvlan_hash_add (struct macvlan_dev*) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int macvlan_open(struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct net_device *lowerdev = vlan->lowerdev;
 int err;

 if (vlan->port->passthru) {
  dev_set_promiscuity(lowerdev, 1);
  goto hash_add;
 }

 err = -EBUSY;
 if (macvlan_addr_busy(vlan->port, dev->dev_addr))
  goto out;

 err = dev_unicast_add(lowerdev, dev->dev_addr);
 if (err < 0)
  goto out;
 if (dev->flags & IFF_ALLMULTI) {
  err = dev_set_allmulti(lowerdev, 1);
  if (err < 0)
   goto del_unicast;
 }

hash_add:
 macvlan_hash_add(vlan);
 return 0;

del_unicast:
 dev_unicast_delete(lowerdev, dev->dev_addr);
out:
 return err;
}
