
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libipw_security {int auth_mode; int flags; } ;
struct libipw_device {int open_wep; int dev; int (* set_security ) (int ,struct libipw_security*) ;} ;
struct ipw_priv {struct libipw_device* ieee; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IW_AUTH_ALG_LEAP ;
 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int IW_AUTH_ALG_SHARED_KEY ;
 int SEC_AUTH_MODE ;
 int WLAN_AUTH_LEAP ;
 int WLAN_AUTH_OPEN ;
 int WLAN_AUTH_SHARED_KEY ;
 int stub1 (int ,struct libipw_security*) ;

__attribute__((used)) static int ipw_wpa_set_auth_algs(struct ipw_priv *priv, int value)
{
 struct libipw_device *ieee = priv->ieee;
 struct libipw_security sec = {
  .flags = SEC_AUTH_MODE,
 };
 int ret = 0;

 if (value & IW_AUTH_ALG_SHARED_KEY) {
  sec.auth_mode = WLAN_AUTH_SHARED_KEY;
  ieee->open_wep = 0;
 } else if (value & IW_AUTH_ALG_OPEN_SYSTEM) {
  sec.auth_mode = WLAN_AUTH_OPEN;
  ieee->open_wep = 1;
 } else if (value & IW_AUTH_ALG_LEAP) {
  sec.auth_mode = WLAN_AUTH_LEAP;
  ieee->open_wep = 1;
 } else
  return -EINVAL;

 if (ieee->set_security)
  ieee->set_security(ieee->dev, &sec);
 else
  ret = -EOPNOTSUPP;

 return ret;
}
