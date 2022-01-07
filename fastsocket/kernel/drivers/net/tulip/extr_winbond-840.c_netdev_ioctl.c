
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int* phys; int lock; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;



 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int mdio_read (struct net_device*,int,int) ;
 int mdio_write (struct net_device*,int,int,int ) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int netdev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct mii_ioctl_data *data = if_mii(rq);
 struct netdev_private *np = netdev_priv(dev);

 switch(cmd) {
 case 130:
  data->phy_id = ((struct netdev_private *)netdev_priv(dev))->phys[0] & 0x1f;


 case 129:
  spin_lock_irq(&np->lock);
  data->val_out = mdio_read(dev, data->phy_id & 0x1f, data->reg_num & 0x1f);
  spin_unlock_irq(&np->lock);
  return 0;

 case 128:
  spin_lock_irq(&np->lock);
  mdio_write(dev, data->phy_id & 0x1f, data->reg_num & 0x1f, data->val_in);
  spin_unlock_irq(&np->lock);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
