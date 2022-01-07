
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct lbs_private* ml_priv; } ;
struct TYPE_2__ {int channel; int bssid; } ;
struct lbs_private {scalar_t__ mode; TYPE_1__ curbssparams; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int e; int m; } ;
struct chan_freq_power {scalar_t__ channel; } ;


 int CMD_ACT_MESH_CONFIG_START ;
 int EINVAL ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 int LBS_DEB_WEXT ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 struct chan_freq_power* find_cfp_by_band_and_freq (struct lbs_private*,int ,long) ;
 int lbs_adhoc_stop (struct lbs_private*) ;
 int lbs_cmd_80211_deauthenticate (struct lbs_private*,int ,int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_wext (char*,...) ;
 struct chan_freq_power* lbs_find_cfp_by_band_and_channel (struct lbs_private*,int ,int) ;
 int lbs_mesh_config (struct lbs_private*,int ,int) ;
 int lbs_update_channel (struct lbs_private*) ;

__attribute__((used)) static int lbs_mesh_set_freq(struct net_device *dev,
        struct iw_request_info *info,
        struct iw_freq *fwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;
 struct chan_freq_power *cfp;
 int ret = -EINVAL;

 lbs_deb_enter(LBS_DEB_WEXT);


 if (fwrq->e == 1) {
  long f = fwrq->m / 100000;

  cfp = find_cfp_by_band_and_freq(priv, 0, f);
  if (!cfp) {
   lbs_deb_wext("invalid freq %ld\n", f);
   goto out;
  }

  fwrq->e = 0;
  fwrq->m = (int) cfp->channel;
 }


 if (fwrq->m > 1000 || fwrq->e > 0) {
  goto out;
 }

 cfp = lbs_find_cfp_by_band_and_channel(priv, 0, fwrq->m);
 if (!cfp) {
  goto out;
 }

 if (fwrq->m != priv->curbssparams.channel) {
  lbs_deb_wext("mesh channel change forces eth disconnect\n");
  if (priv->mode == IW_MODE_INFRA)
   lbs_cmd_80211_deauthenticate(priv,
           priv->curbssparams.bssid,
           WLAN_REASON_DEAUTH_LEAVING);
  else if (priv->mode == IW_MODE_ADHOC)
   lbs_adhoc_stop(priv);
 }
 lbs_mesh_config(priv, CMD_ACT_MESH_CONFIG_START, fwrq->m);
 lbs_update_channel(priv);
 ret = 0;

out:
 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
