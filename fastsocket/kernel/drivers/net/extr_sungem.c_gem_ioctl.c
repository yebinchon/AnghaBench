
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct ifreq {int dummy; } ;
struct gem {int mii_phy_addr; int pm_mutex; int lock; int running; } ;


 int EAGAIN ;
 int EOPNOTSUPP ;



 int __phy_read (struct gem*,int,int) ;
 int __phy_write (struct gem*,int,int,int ) ;
 int gem_get_cell (struct gem*) ;
 int gem_put_cell (struct gem*) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct gem* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gem_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct gem *gp = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(ifr);
 int rc = -EOPNOTSUPP;
 unsigned long flags;




 mutex_lock(&gp->pm_mutex);

 spin_lock_irqsave(&gp->lock, flags);
 gem_get_cell(gp);
 spin_unlock_irqrestore(&gp->lock, flags);

 switch (cmd) {
 case 130:
  data->phy_id = gp->mii_phy_addr;


 case 129:
  if (!gp->running)
   rc = -EAGAIN;
  else {
   data->val_out = __phy_read(gp, data->phy_id & 0x1f,
         data->reg_num & 0x1f);
   rc = 0;
  }
  break;

 case 128:
  if (!gp->running)
   rc = -EAGAIN;
  else {
   __phy_write(gp, data->phy_id & 0x1f, data->reg_num & 0x1f,
        data->val_in);
   rc = 0;
  }
  break;
 };

 spin_lock_irqsave(&gp->lock, flags);
 gem_put_cell(gp);
 spin_unlock_irqrestore(&gp->lock, flags);

 mutex_unlock(&gp->pm_mutex);

 return rc;
}
