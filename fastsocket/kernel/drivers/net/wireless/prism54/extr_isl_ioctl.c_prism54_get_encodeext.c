
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


union oid_res_t {int u; struct obj_key* ptr; } ;
struct iw_point {int length; int flags; } ;
union iwreq_data {struct iw_point encoding; } ;
struct obj_key {int length; int type; int key; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_encode_ext {int key_len; int alg; int key; } ;
struct TYPE_5__ {int wpa; int mib_sem; } ;
typedef TYPE_1__ islpci_private ;





 int DOT11_OID_AUTHENABLE ;
 int DOT11_OID_DEFKEYID ;
 int DOT11_OID_DEFKEYX ;
 int DOT11_OID_EXUNENCRYPTED ;
 int DOT11_OID_PRIVACYINVOKED ;


 int E2BIG ;
 int EINVAL ;
 int IW_ENCODE_ALG_NONE ;
 int IW_ENCODE_ALG_TKIP ;
 int IW_ENCODE_ALG_WEP ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_OPEN ;
 int IW_ENCODE_RESTRICTED ;
 scalar_t__ PRV_STATE_INIT ;
 int down_write (int *) ;
 scalar_t__ islpci_get_state (TYPE_1__*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct iw_encode_ext*,int ,int) ;
 int mgt_get_request (TYPE_1__*,int ,int,int *,union oid_res_t*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int up_write (int *) ;

__attribute__((used)) static int prism54_get_encodeext(struct net_device *ndev,
     struct iw_request_info *info,
     union iwreq_data *wrqu,
     char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 struct iw_point *encoding = &wrqu->encoding;
 struct iw_encode_ext *ext = (struct iw_encode_ext *)extra;
 int idx, max_key_len;
 union oid_res_t r;
 int authen = 131, invoke = 0, exunencrypt = 0, wpa = 0;
 int ret = 0;

 if (islpci_get_state(priv) < PRV_STATE_INIT)
  return 0;


 ret = mgt_get_request(priv, DOT11_OID_AUTHENABLE, 0, ((void*)0), &r);
 authen = r.u;
 ret = mgt_get_request(priv, DOT11_OID_PRIVACYINVOKED, 0, ((void*)0), &r);
 invoke = r.u;
 ret = mgt_get_request(priv, DOT11_OID_EXUNENCRYPTED, 0, ((void*)0), &r);
 exunencrypt = r.u;
 if (ret < 0)
  goto out;

 max_key_len = encoding->length - sizeof(*ext);
 if (max_key_len < 0)
  return -EINVAL;

 idx = (encoding->flags & IW_ENCODE_INDEX) - 1;
 if (idx) {
  if (idx < 0 || idx > 3)
   return -EINVAL;
 } else {
  ret = mgt_get_request(priv, DOT11_OID_DEFKEYID, 0, ((void*)0), &r);
  if (ret < 0)
   goto out;
  idx = r.u;
 }

 encoding->flags = idx + 1;
 memset(ext, 0, sizeof(*ext));

 switch (authen) {
 case 132:
 case 130:
  wrqu->encoding.flags |= IW_ENCODE_RESTRICTED;
 case 131:
 default:
  wrqu->encoding.flags |= IW_ENCODE_OPEN;
  break;
 }

 down_write(&priv->mib_sem);
 wpa = priv->wpa;
 up_write(&priv->mib_sem);

 if (authen == 131 && !exunencrypt && !invoke && !wpa) {

  ext->alg = IW_ENCODE_ALG_NONE;
  ext->key_len = 0;
  wrqu->encoding.flags |= IW_ENCODE_DISABLED;
 } else {
  struct obj_key *key;

  ret = mgt_get_request(priv, DOT11_OID_DEFKEYX, idx, ((void*)0), &r);
  if (ret < 0)
   goto out;
  key = r.ptr;
  if (max_key_len < key->length) {
   ret = -E2BIG;
   goto out;
  }
  memcpy(ext->key, key->key, key->length);
  ext->key_len = key->length;

  switch (key->type) {
  case 129:
   ext->alg = IW_ENCODE_ALG_TKIP;
   break;
  default:
  case 128:
   ext->alg = IW_ENCODE_ALG_WEP;
   break;
  }
  wrqu->encoding.flags |= IW_ENCODE_ENABLED;
 }

out:
 return ret;
}
