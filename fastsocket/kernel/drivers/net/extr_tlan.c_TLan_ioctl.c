
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct ifreq {int dummy; } ;
struct TYPE_3__ {int* phy; size_t phyNum; int phyOnline; } ;
typedef TYPE_1__ TLanPrivateInfo ;


 int EAGAIN ;
 int EOPNOTSUPP ;



 int TLan_MiiReadReg (struct net_device*,int,int,int *) ;
 int TLan_MiiWriteReg (struct net_device*,int,int,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int TLan_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 TLanPrivateInfo *priv = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(rq);
 u32 phy = priv->phy[priv->phyNum];

 if (!priv->phyOnline)
  return -EAGAIN;

 switch(cmd) {
 case 130:
   data->phy_id = phy;


 case 129:
   TLan_MiiReadReg(dev, data->phy_id & 0x1f,
     data->reg_num & 0x1f, &data->val_out);
   return 0;


 case 128:
   TLan_MiiWriteReg(dev, data->phy_id & 0x1f,
      data->reg_num & 0x1f, data->val_in);
   return 0;
  default:
   return -EOPNOTSUPP;
 }
}
