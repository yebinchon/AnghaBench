
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct enc_key {int len; int flags; scalar_t__ type; int * key; } ;
struct TYPE_4__ {scalar_t__ WPA2enabled; scalar_t__ WPAenabled; scalar_t__ wep_enabled; } ;
struct lbs_private {int wep_tx_keyidx; scalar_t__ mode; struct enc_key wpa_unicast_key; struct enc_key wpa_mcast_key; TYPE_2__ secinfo; TYPE_1__* wep_keys; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; int flags; } ;
struct iw_encode_ext {int ext_flags; scalar_t__ alg; int key_len; int key; } ;
struct TYPE_3__ {int len; int * key; } ;


 int E2BIG ;
 int EINVAL ;
 scalar_t__ IW_ENCODE_ALG_CCMP ;
 scalar_t__ IW_ENCODE_ALG_NONE ;
 void* IW_ENCODE_ALG_TKIP ;
 scalar_t__ IW_ENCODE_ALG_WEP ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_EXT_GROUP_KEY ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_NOKEY ;
 scalar_t__ IW_MODE_INFRA ;
 int KEY_INFO_WPA_ENABLED ;
 scalar_t__ KEY_TYPE_ID_AES ;
 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int memcpy (int ,int *,int) ;
 int memset (struct iw_encode_ext*,int ,int) ;

__attribute__((used)) static int lbs_get_encodeext(struct net_device *dev,
         struct iw_request_info *info,
         struct iw_point *dwrq,
         char *extra)
{
 int ret = -EINVAL;
 struct lbs_private *priv = dev->ml_priv;
 struct iw_encode_ext *ext = (struct iw_encode_ext *)extra;
 int index, max_key_len;

 lbs_deb_enter(LBS_DEB_WEXT);

 max_key_len = dwrq->length - sizeof(*ext);
 if (max_key_len < 0)
  goto out;

 index = dwrq->flags & IW_ENCODE_INDEX;
 if (index) {
  if (index < 1 || index > 4)
   goto out;
  index--;
 } else {
  index = priv->wep_tx_keyidx;
 }

 if (!(ext->ext_flags & IW_ENCODE_EXT_GROUP_KEY) &&
     ext->alg != IW_ENCODE_ALG_WEP) {
  if (index != 0 || priv->mode != IW_MODE_INFRA)
   goto out;
 }

 dwrq->flags = index + 1;
 memset(ext, 0, sizeof(*ext));

 if ( !priv->secinfo.wep_enabled
     && !priv->secinfo.WPAenabled
     && !priv->secinfo.WPA2enabled) {
  ext->alg = IW_ENCODE_ALG_NONE;
  ext->key_len = 0;
  dwrq->flags |= IW_ENCODE_DISABLED;
 } else {
  u8 *key = ((void*)0);

  if ( priv->secinfo.wep_enabled
      && !priv->secinfo.WPAenabled
      && !priv->secinfo.WPA2enabled) {

   ext->alg = IW_ENCODE_ALG_WEP;
   ext->key_len = priv->wep_keys[index].len;
   key = &priv->wep_keys[index].key[0];
  } else if ( !priv->secinfo.wep_enabled
             && (priv->secinfo.WPAenabled ||
                 priv->secinfo.WPA2enabled)) {

   struct enc_key * pkey = ((void*)0);

   if ( priv->wpa_mcast_key.len
       && (priv->wpa_mcast_key.flags & KEY_INFO_WPA_ENABLED))
    pkey = &priv->wpa_mcast_key;
   else if ( priv->wpa_unicast_key.len
            && (priv->wpa_unicast_key.flags & KEY_INFO_WPA_ENABLED))
    pkey = &priv->wpa_unicast_key;

   if (pkey) {
    if (pkey->type == KEY_TYPE_ID_AES) {
     ext->alg = IW_ENCODE_ALG_CCMP;
    } else {
     ext->alg = IW_ENCODE_ALG_TKIP;
    }
    ext->key_len = pkey->len;
    key = &pkey->key[0];
   } else {
    ext->alg = IW_ENCODE_ALG_TKIP;
    ext->key_len = 0;
   }
  } else {
   goto out;
  }

  if (ext->key_len > max_key_len) {
   ret = -E2BIG;
   goto out;
  }

  if (ext->key_len)
   memcpy(ext->key, key, ext->key_len);
  else
   dwrq->flags |= IW_ENCODE_NOKEY;
  dwrq->flags |= IW_ENCODE_ENABLED;
 }
 ret = 0;

out:
 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
