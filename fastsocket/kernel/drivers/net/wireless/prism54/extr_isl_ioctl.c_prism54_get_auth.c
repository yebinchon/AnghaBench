
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


union oid_res_t {int u; } ;
struct iw_param {int flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_5__ {int mib_sem; int wpa; } ;
typedef TYPE_1__ islpci_private ;






 int DOT11_OID_AUTHENABLE ;
 int DOT11_OID_DOT1XENABLE ;
 int DOT11_OID_EXUNENCRYPTED ;
 int DOT11_OID_PRIVACYINVOKED ;
 int EOPNOTSUPP ;

 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int IW_AUTH_ALG_SHARED_KEY ;



 int IW_AUTH_INDEX ;





 int IW_AUTH_WPA_VERSION_DISABLED ;
 int IW_AUTH_WPA_VERSION_WPA ;
 int IW_AUTH_WPA_VERSION_WPA2 ;
 scalar_t__ PRV_STATE_INIT ;
 int down_write (int *) ;
 scalar_t__ islpci_get_state (TYPE_1__*) ;
 int mgt_get_request (TYPE_1__*,int ,int ,int *,union oid_res_t*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int up_write (int *) ;

__attribute__((used)) static int prism54_get_auth(struct net_device *ndev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 struct iw_param *param = &wrqu->param;
 u32 wpa = 0;
 int ret = 0;
 union oid_res_t r;

 if (islpci_get_state(priv) < PRV_STATE_INIT)
  return 0;


 down_write(&priv->mib_sem);
 wpa = priv->wpa;
 up_write(&priv->mib_sem);

 switch (param->flags & IW_AUTH_INDEX) {
 case 134:
 case 135:
 case 132:



  ret = -EOPNOTSUPP;
  break;

 case 128:
  switch (wpa) {
  case 1:
   param->value = IW_AUTH_WPA_VERSION_WPA;
   break;
  case 2:
   param->value = IW_AUTH_WPA_VERSION_WPA2;
   break;
  case 0:
  default:
   param->value = IW_AUTH_WPA_VERSION_DISABLED;
   break;
  }
  break;

 case 133:
  ret = mgt_get_request(priv, DOT11_OID_EXUNENCRYPTED, 0, ((void*)0), &r);
  if (ret >= 0)
   param->value = r.u > 0 ? 1 : 0;
  break;

 case 136:
  ret = mgt_get_request(priv, DOT11_OID_AUTHENABLE, 0, ((void*)0), &r);
  if (ret >= 0) {
   switch (r.u) {
   case 138:
    param->value = IW_AUTH_ALG_OPEN_SYSTEM;
    break;
   case 140:
   case 137:
    param->value = IW_AUTH_ALG_SHARED_KEY;
   case 139:
   default:
    param->value = 0;
    break;
   }
  }
  break;

 case 129:
  param->value = wpa > 0 ? 1 : 0;
  break;

 case 130:
  ret = mgt_get_request(priv, DOT11_OID_DOT1XENABLE, 0, ((void*)0), &r);
  if (ret >= 0)
   param->value = r.u > 0 ? 1 : 0;
  break;

 case 131:
  ret = mgt_get_request(priv, DOT11_OID_PRIVACYINVOKED, 0, ((void*)0), &r);
  if (ret >= 0)
   param->value = r.u > 0 ? 1 : 0;
  break;

 default:
  return -EOPNOTSUPP;
 }
 return ret;
}
