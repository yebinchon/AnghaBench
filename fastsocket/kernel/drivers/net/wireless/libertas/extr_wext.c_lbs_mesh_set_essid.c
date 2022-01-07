
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct lbs_private* ml_priv; } ;
struct TYPE_2__ {int channel; } ;
struct lbs_private {TYPE_1__ curbssparams; int mesh_ssid_len; int mesh_ssid; int radio_on; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; int flags; } ;


 int CMD_ACT_MESH_CONFIG_START ;
 int E2BIG ;
 int EINVAL ;
 int IW_ESSID_MAX_SIZE ;
 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_mesh_config (struct lbs_private*,int ,int ) ;
 int memcpy (int ,char*,int ) ;

__attribute__((used)) static int lbs_mesh_set_essid(struct net_device *dev,
         struct iw_request_info *info,
         struct iw_point *dwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;
 int ret = 0;

 lbs_deb_enter(LBS_DEB_WEXT);

 if (!priv->radio_on) {
  ret = -EINVAL;
  goto out;
 }


 if (dwrq->length > IW_ESSID_MAX_SIZE) {
  ret = -E2BIG;
  goto out;
 }

 if (!dwrq->flags || !dwrq->length) {
  ret = -EINVAL;
  goto out;
 } else {

  memcpy(priv->mesh_ssid, extra, dwrq->length);
  priv->mesh_ssid_len = dwrq->length;
 }

 lbs_mesh_config(priv, CMD_ACT_MESH_CONFIG_START,
   priv->curbssparams.channel);
 out:
 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
