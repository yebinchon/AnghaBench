
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int mac_control; int lock; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; scalar_t__ length; } ;
struct iw_encode_ext {int alg; int ext_flags; scalar_t__ key_len; int key; } ;
struct enc_key {int type; int flags; scalar_t__ len; int key; } ;
struct TYPE_2__ {int WPAenabled; int WPA2enabled; int key_mgmt; int auth_mode; int wep_enabled; } ;
struct assoc_request {scalar_t__ mode; TYPE_1__ secinfo; int flags; struct enc_key wpa_unicast_key; struct enc_key wpa_mcast_key; int wep_tx_keyidx; } ;


 int ASSOC_FLAG_SECINFO ;
 int ASSOC_FLAG_WEP_KEYS ;
 int ASSOC_FLAG_WEP_TX_KEYIDX ;
 int ASSOC_FLAG_WPA_MCAST_KEY ;
 int ASSOC_FLAG_WPA_UCAST_KEY ;
 int CMD_ACT_MAC_WEP_ENABLE ;
 int EINVAL ;
 int ENOMEM ;
 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int IW_AUTH_ALG_SHARED_KEY ;
 int IW_AUTH_KEY_MGMT_802_1X ;
 int IW_AUTH_KEY_MGMT_PSK ;
 int IW_ENCODE_ALG_CCMP ;
 int IW_ENCODE_ALG_NONE ;
 int IW_ENCODE_ALG_TKIP ;
 int IW_ENCODE_ALG_WEP ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_EXT_GROUP_KEY ;
 int IW_ENCODE_EXT_SET_TX_KEY ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_OPEN ;
 int IW_ENCODE_RESTRICTED ;
 scalar_t__ IW_MODE_INFRA ;
 int KEY_INFO_WPA_ENABLED ;
 int KEY_INFO_WPA_MCAST ;
 int KEY_INFO_WPA_UNICAST ;
 scalar_t__ KEY_LEN_WPA_AES ;
 scalar_t__ KEY_LEN_WPA_TKIP ;
 int KEY_TYPE_ID_AES ;
 int KEY_TYPE_ID_TKIP ;
 int LBS_DEB_WEXT ;
 int disable_wep (struct assoc_request*) ;
 int disable_wpa (struct assoc_request*) ;
 int lbs_cancel_association_work (struct lbs_private*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_wext (char*,scalar_t__,int) ;
 int lbs_do_association_work (struct lbs_private*) ;
 struct assoc_request* lbs_get_association_request (struct lbs_private*) ;
 int lbs_postpone_association_work (struct lbs_private*) ;
 int lbs_set_wep_key (struct assoc_request*,int ,scalar_t__,int,int) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct enc_key*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int validate_key_index (int ,int,int*,int*) ;

__attribute__((used)) static int lbs_set_encodeext(struct net_device *dev,
         struct iw_request_info *info,
         struct iw_point *dwrq,
         char *extra)
{
 int ret = 0;
 struct lbs_private *priv = dev->ml_priv;
 struct iw_encode_ext *ext = (struct iw_encode_ext *)extra;
 int alg = ext->alg;
 struct assoc_request * assoc_req;

 lbs_deb_enter(LBS_DEB_WEXT);

 mutex_lock(&priv->lock);
 assoc_req = lbs_get_association_request(priv);
 if (!assoc_req) {
  ret = -ENOMEM;
  goto out;
 }

 if ((alg == IW_ENCODE_ALG_NONE) || (dwrq->flags & IW_ENCODE_DISABLED)) {
  disable_wep (assoc_req);
  disable_wpa (assoc_req);
 } else if (alg == IW_ENCODE_ALG_WEP) {
  u16 is_default = 0, index, set_tx_key = 0;

  ret = validate_key_index(assoc_req->wep_tx_keyidx,
                           (dwrq->flags & IW_ENCODE_INDEX),
                           &index, &is_default);
  if (ret)
   goto out;




  if ( !assoc_req->secinfo.wep_enabled
      || (dwrq->length == 0 && !is_default)
      || (ext->ext_flags & IW_ENCODE_EXT_SET_TX_KEY))
   set_tx_key = 1;


  ret = lbs_set_wep_key(assoc_req, ext->key, ext->key_len, index,
     set_tx_key);
  if (ret)
   goto out;

  if (dwrq->flags & IW_ENCODE_RESTRICTED) {
   assoc_req->secinfo.auth_mode = IW_AUTH_ALG_SHARED_KEY;
  } else if (dwrq->flags & IW_ENCODE_OPEN) {
   assoc_req->secinfo.auth_mode = IW_AUTH_ALG_OPEN_SYSTEM;
  }


  set_bit(ASSOC_FLAG_SECINFO, &assoc_req->flags);
  if (dwrq->length)
   set_bit(ASSOC_FLAG_WEP_KEYS, &assoc_req->flags);
  if (set_tx_key)
   set_bit(ASSOC_FLAG_WEP_TX_KEYIDX, &assoc_req->flags);
 } else if ((alg == IW_ENCODE_ALG_TKIP) || (alg == IW_ENCODE_ALG_CCMP)) {
  struct enc_key * pkey;


  if (((alg == IW_ENCODE_ALG_TKIP)
   && (ext->key_len != KEY_LEN_WPA_TKIP))
      || ((alg == IW_ENCODE_ALG_CCMP)
          && (ext->key_len != KEY_LEN_WPA_AES))) {
    lbs_deb_wext("invalid size %d for key of alg "
           "type %d\n",
           ext->key_len,
           alg);
    ret = -EINVAL;
    goto out;
  }

  if (ext->ext_flags & IW_ENCODE_EXT_GROUP_KEY) {
   pkey = &assoc_req->wpa_mcast_key;
   set_bit(ASSOC_FLAG_WPA_MCAST_KEY, &assoc_req->flags);
  } else {
   pkey = &assoc_req->wpa_unicast_key;
   set_bit(ASSOC_FLAG_WPA_UCAST_KEY, &assoc_req->flags);
  }

  memset(pkey, 0, sizeof (struct enc_key));
  memcpy(pkey->key, ext->key, ext->key_len);
  pkey->len = ext->key_len;
  if (pkey->len)
   pkey->flags |= KEY_INFO_WPA_ENABLED;


  if (ext->ext_flags & IW_ENCODE_EXT_GROUP_KEY) {
   pkey->flags |= KEY_INFO_WPA_MCAST;
  } else {
   pkey->flags |= KEY_INFO_WPA_UNICAST;
  }

  if (alg == IW_ENCODE_ALG_TKIP) {
   pkey->type = KEY_TYPE_ID_TKIP;
  } else if (alg == IW_ENCODE_ALG_CCMP) {
   pkey->type = KEY_TYPE_ID_AES;
  }


  if ( assoc_req->secinfo.WPAenabled == 0
      && assoc_req->secinfo.WPA2enabled == 0) {
   assoc_req->secinfo.WPAenabled = 1;
   assoc_req->secinfo.WPA2enabled = 1;
   set_bit(ASSOC_FLAG_SECINFO, &assoc_req->flags);
  }


  if (priv->mac_control & CMD_ACT_MAC_WEP_ENABLE)
   disable_wep(assoc_req);
 }

out:
 if (ret == 0) {





  if (assoc_req->mode == IW_MODE_INFRA &&
      ((assoc_req->secinfo.key_mgmt & IW_AUTH_KEY_MGMT_802_1X) ||
       (assoc_req->secinfo.key_mgmt & IW_AUTH_KEY_MGMT_PSK) ||
        assoc_req->secinfo.WPAenabled ||
        assoc_req->secinfo.WPA2enabled)) {
   lbs_do_association_work(priv);
  } else
   lbs_postpone_association_work(priv);
 } else {
  lbs_cancel_association_work(priv);
 }
 mutex_unlock(&priv->lock);

 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
