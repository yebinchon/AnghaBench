
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


union iwreq_data {int freq; } ;
struct net_device {unsigned int base_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int spinlock; } ;
typedef TYPE_1__ net_local ;


 int EOPNOTSUPP ;
 int MMR_FEE_STATUS_BUSY ;
 int MMR_FEE_STATUS_DWLD ;
 int mmc_in (unsigned int,int ) ;
 int mmr_fee_status ;
 int mmroff (int ,int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wv_set_frequency (unsigned int,int *) ;

__attribute__((used)) static int wavelan_set_freq(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu,
       char *extra)
{
 unsigned int base = dev->base_addr;
 net_local *lp = netdev_priv(dev);
 unsigned long flags;
 int ret;


 spin_lock_irqsave(&lp->spinlock, flags);


 if (!(mmc_in(base, mmroff(0, mmr_fee_status)) &
       (MMR_FEE_STATUS_DWLD | MMR_FEE_STATUS_BUSY)))
  ret = wv_set_frequency(base, &(wrqu->freq));
 else
  ret = -EOPNOTSUPP;


 spin_unlock_irqrestore(&lp->spinlock, flags);

 return ret;
}
