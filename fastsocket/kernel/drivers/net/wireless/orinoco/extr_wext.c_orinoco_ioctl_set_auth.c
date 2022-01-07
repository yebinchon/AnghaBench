
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_param {long flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
struct hermes {int dummy; } ;
struct orinoco_private {int key_mgmt; int tkip_cm_active; int wep_restrict; int wpa_enabled; int has_wpa; struct hermes hw; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 int EOPNOTSUPP ;

 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int IW_AUTH_ALG_SHARED_KEY ;



 long IW_AUTH_INDEX ;


 int IW_AUTH_MFP_REQUIRED ;





 int hermes_disable_port (struct hermes*,int ) ;
 int hermes_enable_port (struct hermes*,int ) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_set_auth(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 struct hermes *hw = &priv->hw;
 struct iw_param *param = &wrqu->param;
 unsigned long flags;
 int ret = -EINPROGRESS;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 switch (param->flags & IW_AUTH_INDEX) {
 case 128:
 case 136:
 case 137:
 case 131:
 case 132:
 case 135:



  break;

 case 133:



  if (param->value == IW_AUTH_MFP_REQUIRED)
   ret = -EINVAL;
  break;

 case 134:




  priv->key_mgmt = param->value;
  break;

 case 130:







  if (param->value) {
   priv->tkip_cm_active = 1;
   ret = hermes_disable_port(hw, 0);
  } else {
   priv->tkip_cm_active = 0;
   ret = hermes_enable_port(hw, 0);
  }
  break;

 case 138:
  if (param->value & IW_AUTH_ALG_SHARED_KEY)
   priv->wep_restrict = 1;
  else if (param->value & IW_AUTH_ALG_OPEN_SYSTEM)
   priv->wep_restrict = 0;
  else
   ret = -EINVAL;
  break;

 case 129:
  if (priv->has_wpa) {
   priv->wpa_enabled = param->value ? 1 : 0;
  } else {
   if (param->value)
    ret = -EOPNOTSUPP;

   priv->wpa_enabled = 0;
  }
  break;

 default:
  ret = -EOPNOTSUPP;
 }

 orinoco_unlock(priv, &flags);
 return ret;
}
