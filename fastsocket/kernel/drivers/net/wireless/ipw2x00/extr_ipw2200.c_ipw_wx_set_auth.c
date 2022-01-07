
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iw_param {long flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
struct net_device {int dummy; } ;
struct libipw_security {int level; int flags; int enabled; } ;
struct TYPE_3__ {size_t tx_keyidx; struct lib80211_crypt_data** crypt; } ;
struct libipw_device {int privacy_invoked; int ieee802_1x; int dev; int (* set_security ) (int ,struct libipw_security*) ;int drop_unencrypted; TYPE_1__ crypt_info; } ;
struct lib80211_crypt_data {int priv; TYPE_2__* ops; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {struct libipw_device* ieee; } ;
struct TYPE_4__ {unsigned long (* get_flags ) (int ) ;int (* set_flags ) (unsigned long,int ) ;} ;


 int EOPNOTSUPP ;
 unsigned long IEEE80211_CRYPTO_TKIP_COUNTERMEASURES ;




 long IW_AUTH_INDEX ;






 int SEC_ENABLED ;
 int SEC_LEVEL ;
 int SEC_LEVEL_0 ;
 int SEC_LEVEL_1 ;
 int ipw_disassociate (struct ipw_priv*) ;
 int ipw_set_hw_decrypt_multicast (struct ipw_priv*,int ) ;
 int ipw_set_hw_decrypt_unicast (struct ipw_priv*,int ) ;
 int ipw_wpa_enable (struct ipw_priv*,int ) ;
 int ipw_wpa_set_auth_algs (struct ipw_priv*,int ) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 unsigned long stub1 (int ) ;
 int stub2 (unsigned long,int ) ;
 int stub3 (int ,struct libipw_security*) ;
 int wext_cipher2level (int ) ;

__attribute__((used)) static int ipw_wx_set_auth(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 struct libipw_device *ieee = priv->ieee;
 struct iw_param *param = &wrqu->param;
 struct lib80211_crypt_data *crypt;
 unsigned long flags;
 int ret = 0;

 switch (param->flags & IW_AUTH_INDEX) {
 case 128:
  break;
 case 135:
  ipw_set_hw_decrypt_unicast(priv,
        wext_cipher2level(param->value));
  break;
 case 136:
  ipw_set_hw_decrypt_multicast(priv,
          wext_cipher2level(param->value));
  break;
 case 133:



  break;

 case 130:
  crypt = priv->ieee->crypt_info.crypt[priv->ieee->crypt_info.tx_keyidx];
  if (!crypt || !crypt->ops->set_flags || !crypt->ops->get_flags)
   break;

  flags = crypt->ops->get_flags(crypt->priv);

  if (param->value)
   flags |= IEEE80211_CRYPTO_TKIP_COUNTERMEASURES;
  else
   flags &= ~IEEE80211_CRYPTO_TKIP_COUNTERMEASURES;

  crypt->ops->set_flags(flags, crypt->priv);

  break;

 case 134:{
   struct libipw_security sec = {
    .flags = SEC_ENABLED,
    .enabled = param->value,
   };
   priv->ieee->drop_unencrypted = param->value;



   if (!param->value) {
    sec.flags |= SEC_LEVEL;
    sec.level = SEC_LEVEL_0;
   } else {
    sec.flags |= SEC_LEVEL;
    sec.level = SEC_LEVEL_1;
   }
   if (priv->ieee->set_security)
    priv->ieee->set_security(priv->ieee->dev, &sec);
   break;
  }

 case 137:
  ret = ipw_wpa_set_auth_algs(priv, param->value);
  break;

 case 129:
  ret = ipw_wpa_enable(priv, param->value);
  ipw_disassociate(priv);
  break;

 case 131:
  ieee->ieee802_1x = param->value;
  break;

 case 132:
  ieee->privacy_invoked = param->value;
  break;

 default:
  return -EOPNOTSUPP;
 }
 return ret;
}
