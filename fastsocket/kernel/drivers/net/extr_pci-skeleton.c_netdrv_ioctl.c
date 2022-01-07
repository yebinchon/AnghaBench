
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdrv_private {int* phys; int lock; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct ifreq {int dummy; } ;


 int DPRINTK (char*,...) ;
 int EOPNOTSUPP ;



 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int mdio_read (struct net_device*,int,int) ;
 int mdio_write (struct net_device*,int,int,int ) ;
 struct netdrv_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int netdrv_ioctl (struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct netdrv_private *tp = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(rq);
 unsigned long flags;
 int rc = 0;

 DPRINTK ("ENTER\n");

 switch (cmd) {
 case 130:
  data->phy_id = tp->phys[0] & 0x3f;


 case 129:
  spin_lock_irqsave (&tp->lock, flags);
  data->val_out = mdio_read (dev, data->phy_id & 0x1f, data->reg_num & 0x1f);
  spin_unlock_irqrestore (&tp->lock, flags);
  break;

 case 128:
  spin_lock_irqsave (&tp->lock, flags);
  mdio_write (dev, data->phy_id & 0x1f, data->reg_num & 0x1f, data->val_in);
  spin_unlock_irqrestore (&tp->lock, flags);
  break;

 default:
  rc = -EOPNOTSUPP;
  break;
 }

 DPRINTK ("EXIT, returning %d\n", rc);
 return rc;
}
