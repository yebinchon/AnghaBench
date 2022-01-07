
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; int flags; } ;
union iwreq_data {TYPE_1__ encoding; } ;
struct net_device {unsigned int base_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_6__ {int psa_encryption_key; scalar_t__ psa_encryption_select; } ;
typedef TYPE_2__ psa_t ;
struct TYPE_7__ {int spinlock; } ;
typedef TYPE_3__ net_local ;


 int EOPNOTSUPP ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int memcpy (char*,int ,int) ;
 int mmc_encr (unsigned int) ;
 TYPE_3__* netdev_priv (struct net_device*) ;
 int psa_read (struct net_device*,int,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int wavelan_get_encode(struct net_device *dev,
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


 if (!mmc_encr(base)) {
  ret = -EOPNOTSUPP;
 } else {

  psa_read(dev,
    (char *) &psa.psa_encryption_select -
    (char *) &psa,
    (unsigned char *) &psa.
    psa_encryption_select, 1 + 8);


  if (psa.psa_encryption_select)
   wrqu->encoding.flags = IW_ENCODE_ENABLED;
  else
   wrqu->encoding.flags = IW_ENCODE_DISABLED;
  wrqu->encoding.flags |= mmc_encr(base);


  wrqu->encoding.length = 8;
  memcpy(extra, psa.psa_encryption_key, wrqu->encoding.length);
 }


 spin_unlock_irqrestore(&lp->spinlock, flags);

 return ret;
}
