
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned short m; int e; } ;
union iwreq_data {TYPE_1__ freq; } ;
struct net_device {unsigned int base_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_6__ {int psa_subband; } ;
typedef TYPE_2__ psa_t ;
struct TYPE_7__ {int spinlock; } ;
typedef TYPE_3__ net_local ;


 int EOPNOTSUPP ;
 int MMR_FEE_STATUS_BUSY ;
 int MMR_FEE_STATUS_DWLD ;
 int fee_read (unsigned int,int,unsigned short*,int) ;
 unsigned short* fixed_bands ;
 int mmc_in (unsigned int,int ) ;
 int mmr_fee_status ;
 int mmroff (int ,int ) ;
 TYPE_3__* netdev_priv (struct net_device*) ;
 int psa_read (struct net_device*,int,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int wavelan_get_freq(struct net_device *dev,
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



 if (!(mmc_in(base, mmroff(0, mmr_fee_status)) &
       (MMR_FEE_STATUS_DWLD | MMR_FEE_STATUS_BUSY))) {
  unsigned short freq;


  fee_read(base, 0x00, &freq, 1);
  wrqu->freq.m = ((freq >> 5) * 5 + 24000L) * 10000;
  wrqu->freq.e = 1;
 } else {
  psa_read(dev,
    (char *) &psa.psa_subband - (char *) &psa,
    (unsigned char *) &psa.psa_subband, 1);

  if (psa.psa_subband <= 4) {
   wrqu->freq.m = fixed_bands[psa.psa_subband];
   wrqu->freq.e = (psa.psa_subband != 0);
  } else
   ret = -EOPNOTSUPP;
 }


 spin_unlock_irqrestore(&lp->spinlock, flags);

 return ret;
}
