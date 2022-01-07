
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int name; } ;


 int EINVAL ;
 int XPNET_MAX_MTU ;
 int dev_dbg (int ,char*,int ,int) ;
 int dev_err (int ,char*,int ,int,int) ;
 int xpnet ;

__attribute__((used)) static int
xpnet_dev_change_mtu(struct net_device *dev, int new_mtu)
{

 if ((new_mtu < 68) || (new_mtu > XPNET_MAX_MTU)) {
  dev_err(xpnet, "ifconfig %s mtu %d failed; value must be "
   "between 68 and %ld\n", dev->name, new_mtu,
   XPNET_MAX_MTU);
  return -EINVAL;
 }

 dev->mtu = new_mtu;
 dev_dbg(xpnet, "ifconfig %s mtu set to %d\n", dev->name, new_mtu);
 return 0;
}
