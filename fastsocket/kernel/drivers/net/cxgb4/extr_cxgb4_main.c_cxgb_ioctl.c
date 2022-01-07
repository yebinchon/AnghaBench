
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct port_info {int mdio_addr; TYPE_1__* adapter; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct ifreq {int ifr_data; } ;
struct TYPE_3__ {unsigned int fn; } ;


 int EINVAL ;
 int EOPNOTSUPP ;



 int mdio_phy_id_devad (int) ;
 int mdio_phy_id_is_c45 (int) ;
 int mdio_phy_id_prtad (int) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_mdio_rd (TYPE_1__*,unsigned int,int,int,int,int *) ;
 int t4_mdio_wr (TYPE_1__*,unsigned int,int,int,int,int ) ;

__attribute__((used)) static int cxgb_ioctl(struct net_device *dev, struct ifreq *req, int cmd)
{
 unsigned int mbox;
 int ret = 0, prtad, devad;
 struct port_info *pi = netdev_priv(dev);
 struct mii_ioctl_data *data = (struct mii_ioctl_data *)&req->ifr_data;

 switch (cmd) {
 case 130:
  if (pi->mdio_addr < 0)
   return -EOPNOTSUPP;
  data->phy_id = pi->mdio_addr;
  break;
 case 129:
 case 128:
  if (mdio_phy_id_is_c45(data->phy_id)) {
   prtad = mdio_phy_id_prtad(data->phy_id);
   devad = mdio_phy_id_devad(data->phy_id);
  } else if (data->phy_id < 32) {
   prtad = data->phy_id;
   devad = 0;
   data->reg_num &= 0x1f;
  } else
   return -EINVAL;

  mbox = pi->adapter->fn;
  if (cmd == 129)
   ret = t4_mdio_rd(pi->adapter, mbox, prtad, devad,
      data->reg_num, &data->val_out);
  else
   ret = t4_mdio_wr(pi->adapter, mbox, prtad, devad,
      data->reg_num, data->val_in);
  break;
 default:
  return -EOPNOTSUPP;
 }
 return ret;
}
