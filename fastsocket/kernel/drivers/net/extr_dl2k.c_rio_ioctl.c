
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int phy_addr; } ;
struct net_device {int dummy; } ;
struct mii_data {int phy_id; int val_in; int reg_num; int val_out; } ;
struct ifreq {int ifr_ifru; } ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;




 int capable (int ) ;
 int mii_read (struct net_device*,int,int ) ;
 int mii_write (struct net_device*,int,int ,int ) ;
 struct netdev_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
rio_ioctl (struct net_device *dev, struct ifreq *rq, int cmd)
{
 int phy_addr;
 struct netdev_private *np = netdev_priv(dev);
 struct mii_data *miidata = (struct mii_data *) &rq->ifr_ifru;

 phy_addr = np->phy_addr;
 switch (cmd) {
 case 131:
  break;
 case 130:
  miidata->phy_id = phy_addr;
  break;
 case 129:
  miidata->val_out = mii_read (dev, phy_addr, miidata->reg_num);
  break;
 case 128:
  if (!capable(CAP_NET_ADMIN))
   return -EPERM;
  mii_write (dev, phy_addr, miidata->reg_num, miidata->val_in);
  break;
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
