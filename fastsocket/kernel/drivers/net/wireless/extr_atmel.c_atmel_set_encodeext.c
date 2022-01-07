
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_point {int flags; } ;
union iwreq_data {struct iw_point encoding; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_encode_ext {int alg; int ext_flags; scalar_t__ key_len; int key; } ;
struct atmel_private {int default_key; int wep_is_on; int encryption_level; int* wep_key_len; int * wep_keys; int pairwise_cipher_suite; } ;


 int CIPHER_SUITE_NONE ;
 int CIPHER_SUITE_WEP_128 ;
 int CIPHER_SUITE_WEP_64 ;
 int EINPROGRESS ;
 int EINVAL ;


 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_EXT_SET_TX_KEY ;
 int IW_ENCODE_INDEX ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 int min (int,int) ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_set_encodeext(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu,
       char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);
 struct iw_point *encoding = &wrqu->encoding;
 struct iw_encode_ext *ext = (struct iw_encode_ext *)extra;
 int idx, key_len, alg = ext->alg, set_key = 1;


 idx = encoding->flags & IW_ENCODE_INDEX;
 if (idx) {
  if (idx < 1 || idx > 4)
   return -EINVAL;
  idx--;
 } else
  idx = priv->default_key;

 if (encoding->flags & IW_ENCODE_DISABLED)
     alg = 129;

 if (ext->ext_flags & IW_ENCODE_EXT_SET_TX_KEY) {
  priv->default_key = idx;
  set_key = ext->key_len > 0 ? 1 : 0;
 }

 if (set_key) {

  switch (alg) {
  case 129:
   priv->wep_is_on = 0;
   priv->encryption_level = 0;
   priv->pairwise_cipher_suite = CIPHER_SUITE_NONE;
   break;
  case 128:
   if (ext->key_len > 5) {
    priv->wep_key_len[idx] = 13;
    priv->pairwise_cipher_suite = CIPHER_SUITE_WEP_128;
    priv->encryption_level = 2;
   } else if (ext->key_len > 0) {
    priv->wep_key_len[idx] = 5;
    priv->pairwise_cipher_suite = CIPHER_SUITE_WEP_64;
    priv->encryption_level = 1;
   } else {
    return -EINVAL;
   }
   priv->wep_is_on = 1;
   memset(priv->wep_keys[idx], 0, 13);
   key_len = min ((int)ext->key_len, priv->wep_key_len[idx]);
   memcpy(priv->wep_keys[idx], ext->key, key_len);
   break;
  default:
   return -EINVAL;
  }
 }

 return -EINPROGRESS;
}
