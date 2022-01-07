
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct lbs_private* ml_priv; } ;
struct TYPE_2__ {int key_mgmt; int auth_mode; int WPA2enabled; int WPAenabled; } ;
struct lbs_private {TYPE_1__ secinfo; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; int value; } ;


 int EOPNOTSUPP ;

 int IW_AUTH_INDEX ;



 int IW_AUTH_WPA_VERSION_DISABLED ;
 int IW_AUTH_WPA_VERSION_WPA ;
 int IW_AUTH_WPA_VERSION_WPA2 ;
 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;

__attribute__((used)) static int lbs_get_auth(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_param *dwrq,
    char *extra)
{
 int ret = 0;
 struct lbs_private *priv = dev->ml_priv;

 lbs_deb_enter(LBS_DEB_WEXT);

 switch (dwrq->flags & IW_AUTH_INDEX) {
 case 130:
  dwrq->value = priv->secinfo.key_mgmt;
  break;

 case 128:
  dwrq->value = 0;
  if (priv->secinfo.WPAenabled)
   dwrq->value |= IW_AUTH_WPA_VERSION_WPA;
  if (priv->secinfo.WPA2enabled)
   dwrq->value |= IW_AUTH_WPA_VERSION_WPA2;
  if (!dwrq->value)
   dwrq->value |= IW_AUTH_WPA_VERSION_DISABLED;
  break;

 case 131:
  dwrq->value = priv->secinfo.auth_mode;
  break;

 case 129:
  if (priv->secinfo.WPAenabled && priv->secinfo.WPA2enabled)
   dwrq->value = 1;
  break;

 default:
  ret = -EOPNOTSUPP;
 }

 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
