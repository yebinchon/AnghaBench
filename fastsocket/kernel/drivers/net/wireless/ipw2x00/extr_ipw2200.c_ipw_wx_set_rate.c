
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int fixed; } ;
union iwreq_data {TYPE_1__ bitrate; } ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int rates_mask; int mutex; int config; TYPE_2__* ieee; } ;
struct TYPE_4__ {int mode; } ;


 int CFG_FIXED_RATE ;
 int EINVAL ;
 int IPW_DEBUG_ASSOC (char*) ;
 int IPW_DEBUG_WX (char*,...) ;
 int LIBIPW_CCK_RATE_11MB_MASK ;
 int LIBIPW_CCK_RATE_1MB_MASK ;
 int LIBIPW_CCK_RATE_2MB_MASK ;
 int LIBIPW_CCK_RATE_5MB_MASK ;
 int LIBIPW_DEFAULT_RATES_MASK ;
 int LIBIPW_OFDM_RATE_12MB_MASK ;
 int LIBIPW_OFDM_RATE_18MB_MASK ;
 int LIBIPW_OFDM_RATE_24MB_MASK ;
 int LIBIPW_OFDM_RATE_36MB_MASK ;
 int LIBIPW_OFDM_RATE_48MB_MASK ;
 int LIBIPW_OFDM_RATE_54MB_MASK ;
 int LIBIPW_OFDM_RATE_6MB_MASK ;
 int LIBIPW_OFDM_RATE_9MB_MASK ;
 int ipw_associate (struct ipw_priv*) ;
 int ipw_disassociate (struct ipw_priv*) ;
 int ipw_set_fixed_rate (struct ipw_priv*,int ) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_set_rate(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{

 struct ipw_priv *priv = libipw_priv(dev);
 u32 target_rate = wrqu->bitrate.value;
 u32 fixed, mask;





 if (target_rate == -1) {
  fixed = 0;
  mask = LIBIPW_DEFAULT_RATES_MASK;

  goto apply;
 }

 mask = 0;
 fixed = wrqu->bitrate.fixed;

 if (target_rate == 1000000 || !fixed)
  mask |= LIBIPW_CCK_RATE_1MB_MASK;
 if (target_rate == 1000000)
  goto apply;

 if (target_rate == 2000000 || !fixed)
  mask |= LIBIPW_CCK_RATE_2MB_MASK;
 if (target_rate == 2000000)
  goto apply;

 if (target_rate == 5500000 || !fixed)
  mask |= LIBIPW_CCK_RATE_5MB_MASK;
 if (target_rate == 5500000)
  goto apply;

 if (target_rate == 6000000 || !fixed)
  mask |= LIBIPW_OFDM_RATE_6MB_MASK;
 if (target_rate == 6000000)
  goto apply;

 if (target_rate == 9000000 || !fixed)
  mask |= LIBIPW_OFDM_RATE_9MB_MASK;
 if (target_rate == 9000000)
  goto apply;

 if (target_rate == 11000000 || !fixed)
  mask |= LIBIPW_CCK_RATE_11MB_MASK;
 if (target_rate == 11000000)
  goto apply;

 if (target_rate == 12000000 || !fixed)
  mask |= LIBIPW_OFDM_RATE_12MB_MASK;
 if (target_rate == 12000000)
  goto apply;

 if (target_rate == 18000000 || !fixed)
  mask |= LIBIPW_OFDM_RATE_18MB_MASK;
 if (target_rate == 18000000)
  goto apply;

 if (target_rate == 24000000 || !fixed)
  mask |= LIBIPW_OFDM_RATE_24MB_MASK;
 if (target_rate == 24000000)
  goto apply;

 if (target_rate == 36000000 || !fixed)
  mask |= LIBIPW_OFDM_RATE_36MB_MASK;
 if (target_rate == 36000000)
  goto apply;

 if (target_rate == 48000000 || !fixed)
  mask |= LIBIPW_OFDM_RATE_48MB_MASK;
 if (target_rate == 48000000)
  goto apply;

 if (target_rate == 54000000 || !fixed)
  mask |= LIBIPW_OFDM_RATE_54MB_MASK;
 if (target_rate == 54000000)
  goto apply;

 IPW_DEBUG_WX("invalid rate specified, returning error\n");
 return -EINVAL;

      apply:
 IPW_DEBUG_WX("Setting rate mask to 0x%08X [%s]\n",
       mask, fixed ? "fixed" : "sub-rates");
 mutex_lock(&priv->mutex);
 if (mask == LIBIPW_DEFAULT_RATES_MASK) {
  priv->config &= ~CFG_FIXED_RATE;
  ipw_set_fixed_rate(priv, priv->ieee->mode);
 } else
  priv->config |= CFG_FIXED_RATE;

 if (priv->rates_mask == mask) {
  IPW_DEBUG_WX("Mask set to current mask.\n");
  mutex_unlock(&priv->mutex);
  return 0;
 }

 priv->rates_mask = mask;


 IPW_DEBUG_ASSOC("[re]association triggered due to rates change.\n");
 if (!ipw_disassociate(priv))
  ipw_associate(priv);

 mutex_unlock(&priv->mutex);
 return 0;
}
