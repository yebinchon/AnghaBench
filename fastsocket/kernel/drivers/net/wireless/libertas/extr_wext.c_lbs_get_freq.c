
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct lbs_private* ml_priv; } ;
struct TYPE_2__ {long channel; } ;
struct lbs_private {TYPE_1__ curbssparams; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {long m; int e; } ;
struct chan_freq_power {scalar_t__ freq; } ;


 int EINVAL ;
 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_deb_wext (char*,long) ;
 struct chan_freq_power* lbs_find_cfp_by_band_and_channel (struct lbs_private*,int ,long) ;

__attribute__((used)) static int lbs_get_freq(struct net_device *dev, struct iw_request_info *info,
    struct iw_freq *fwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;
 struct chan_freq_power *cfp;

 lbs_deb_enter(LBS_DEB_WEXT);

 cfp = lbs_find_cfp_by_band_and_channel(priv, 0,
        priv->curbssparams.channel);

 if (!cfp) {
  if (priv->curbssparams.channel)
   lbs_deb_wext("invalid channel %d\n",
          priv->curbssparams.channel);
  return -EINVAL;
 }

 fwrq->m = (long)cfp->freq * 100000;
 fwrq->e = 1;

 lbs_deb_wext("freq %u\n", fwrq->m);
 lbs_deb_leave(LBS_DEB_WEXT);
 return 0;
}
