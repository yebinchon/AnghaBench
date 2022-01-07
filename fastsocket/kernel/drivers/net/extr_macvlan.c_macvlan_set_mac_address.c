
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int flags; int dev_addr; } ;
struct macvlan_dev {int port; struct net_device* lowerdev; } ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int ETH_ALEN ;
 int IFF_UP ;
 int dev_unicast_add (struct net_device*,int ) ;
 int dev_unicast_delete (struct net_device*,int ) ;
 int is_valid_ether_addr (int ) ;
 scalar_t__ macvlan_addr_busy (int ,int ) ;
 int macvlan_hash_change_addr (struct macvlan_dev*,int ) ;
 int memcpy (int ,int ,int ) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int macvlan_set_mac_address(struct net_device *dev, void *p)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct net_device *lowerdev = vlan->lowerdev;
 struct sockaddr *addr = p;
 int err;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 if (!(dev->flags & IFF_UP)) {

  memcpy(dev->dev_addr, addr->sa_data, ETH_ALEN);
 } else {

  if (macvlan_addr_busy(vlan->port, addr->sa_data))
   return -EBUSY;

  err = dev_unicast_add(lowerdev, addr->sa_data);
  if (err)
   return err;

  dev_unicast_delete(lowerdev, dev->dev_addr);

  macvlan_hash_change_addr(vlan, addr->sa_data);
 }
 return 0;
}
