
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
struct TYPE_6__ {int psa_encryption_select; int psa_encryption_key; } ;
typedef TYPE_2__ psa_t ;
struct TYPE_7__ {int spinlock; } ;
typedef TYPE_3__ net_local ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IW_ENCODE_DISABLED ;
 int MMW_ENCR_ENABLE_EN ;
 int MMW_ENCR_ENABLE_MODE ;
 int memcpy (int ,char*,int) ;
 int mmc_encr (unsigned int) ;
 int mmc_out (unsigned int,int ,int) ;
 int mmc_write (unsigned int,int ,unsigned char*,int) ;
 int mmw_encr_enable ;
 int mmw_encr_key ;
 int mmwoff (int ,int ) ;
 TYPE_3__* netdev_priv (struct net_device*) ;
 int psa_write (struct net_device*,int,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_psa_checksum (struct net_device*) ;

__attribute__((used)) static int wavelan_set_encode(struct net_device *dev,
         struct iw_request_info *info,
         union iwreq_data *wrqu,
         char *extra)
{
 unsigned int base = dev->base_addr;
 net_local *lp = netdev_priv(dev);
 unsigned long flags;
 psa_t psa;
 int ret = 0;


 spin_lock_irqsave(&lp->spinlock, flags);


 if (!mmc_encr(base)) {
  ret = -EOPNOTSUPP;
 }


 if((wrqu->encoding.length != 8) && (wrqu->encoding.length != 0)) {
  ret = -EINVAL;
 }

 if(!ret) {

  if (wrqu->encoding.length == 8) {

   memcpy(psa.psa_encryption_key, extra,
          wrqu->encoding.length);
   psa.psa_encryption_select = 1;

   psa_write(dev,
      (char *) &psa.psa_encryption_select -
      (char *) &psa,
      (unsigned char *) &psa.
      psa_encryption_select, 8 + 1);

   mmc_out(base, mmwoff(0, mmw_encr_enable),
    MMW_ENCR_ENABLE_EN | MMW_ENCR_ENABLE_MODE);
   mmc_write(base, mmwoff(0, mmw_encr_key),
      (unsigned char *) &psa.
      psa_encryption_key, 8);
  }


  if (wrqu->encoding.flags & IW_ENCODE_DISABLED) {
   psa.psa_encryption_select = 0;
   psa_write(dev,
      (char *) &psa.psa_encryption_select -
      (char *) &psa,
      (unsigned char *) &psa.
      psa_encryption_select, 1);

   mmc_out(base, mmwoff(0, mmw_encr_enable), 0);
  }

  update_psa_checksum(dev);
 }


 spin_unlock_irqrestore(&lp->spinlock, flags);

 return ret;
}
