
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int name; } ;
struct eth1394_priv {int host; } ;


 int EINVAL ;
 int ERANGE ;
 int ETH1394_PRINT (int ,int ,char*,int) ;
 int KERN_INFO ;
 int ether1394_max_mtu (int ) ;
 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static int ether1394_change_mtu(struct net_device *dev, int new_mtu)
{
 int max_mtu;

 if (new_mtu < 68)
  return -EINVAL;

 max_mtu = ether1394_max_mtu(
   ((struct eth1394_priv *)netdev_priv(dev))->host);
 if (new_mtu > max_mtu) {
  ETH1394_PRINT(KERN_INFO, dev->name,
         "Local node constrains MTU to %d\n", max_mtu);
  return -ERANGE;
 }

 dev->mtu = new_mtu;
 return 0;
}
