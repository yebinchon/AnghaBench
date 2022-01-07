
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value; } ;
union iwreq_data {TYPE_1__ sens; } ;
struct net_device {unsigned int base_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_6__ {int psa_thr_pre_set; } ;
typedef TYPE_2__ psa_t ;
struct TYPE_7__ {int spinlock; } ;
typedef TYPE_3__ net_local ;


 int mmc_out (unsigned int,int ,int) ;
 int mmw_thr_pre_set ;
 int mmwoff (int ,int ) ;
 TYPE_3__* netdev_priv (struct net_device*) ;
 int psa_write (struct net_device*,int,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_psa_checksum (struct net_device*) ;

__attribute__((used)) static int wavelan_set_sens(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu,
       char *extra)
{
 unsigned int base = dev->base_addr;
 net_local *lp = netdev_priv(dev);
 psa_t psa;
 unsigned long flags;
 int ret = 0;


 spin_lock_irqsave(&lp->spinlock, flags);




 psa.psa_thr_pre_set = wrqu->sens.value & 0x3F;
 psa_write(dev,
    (char *) &psa.psa_thr_pre_set - (char *) &psa,
    (unsigned char *) &psa.psa_thr_pre_set, 1);

 update_psa_checksum(dev);
 mmc_out(base, mmwoff(0, mmw_thr_pre_set),
  psa.psa_thr_pre_set);


 spin_unlock_irqrestore(&lp->spinlock, flags);

 return ret;
}
