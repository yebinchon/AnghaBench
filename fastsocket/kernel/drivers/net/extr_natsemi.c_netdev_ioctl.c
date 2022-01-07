
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int phy_addr_external; int advertising; } ;
struct net_device {int if_port; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;
 int MII_ADVERTISE ;
 int PORT_TP ;



 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int mdio_read (struct net_device*,int) ;
 int mdio_write (struct net_device*,int,int ) ;
 int miiport_read (struct net_device*,int,int) ;
 int miiport_write (struct net_device*,int,int,int ) ;
 int move_int_phy (struct net_device*,int) ;
 struct netdev_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct mii_ioctl_data *data = if_mii(rq);
 struct netdev_private *np = netdev_priv(dev);

 switch(cmd) {
 case 130:
  data->phy_id = np->phy_addr_external;


 case 129:




  if (dev->if_port == PORT_TP) {
   if ((data->phy_id & 0x1f) == np->phy_addr_external)
    data->val_out = mdio_read(dev,
       data->reg_num & 0x1f);
   else
    data->val_out = 0;
  } else {
   move_int_phy(dev, data->phy_id & 0x1f);
   data->val_out = miiport_read(dev, data->phy_id & 0x1f,
       data->reg_num & 0x1f);
  }
  return 0;

 case 128:
  if (dev->if_port == PORT_TP) {
   if ((data->phy_id & 0x1f) == np->phy_addr_external) {
     if ((data->reg_num & 0x1f) == MII_ADVERTISE)
     np->advertising = data->val_in;
    mdio_write(dev, data->reg_num & 0x1f,
       data->val_in);
   }
  } else {
   if ((data->phy_id & 0x1f) == np->phy_addr_external) {
     if ((data->reg_num & 0x1f) == MII_ADVERTISE)
     np->advertising = data->val_in;
   }
   move_int_phy(dev, data->phy_id & 0x1f);
   miiport_write(dev, data->phy_id & 0x1f,
      data->reg_num & 0x1f,
      data->val_in);
  }
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
