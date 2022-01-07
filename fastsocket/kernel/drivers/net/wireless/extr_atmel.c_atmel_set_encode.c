
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; int flags; } ;
struct atmel_private {int default_key; int* wep_key_len; int wep_is_on; int exclude_unencrypted; int encryption_level; void* pairwise_cipher_suite; int * wep_keys; } ;


 void* CIPHER_SUITE_NONE ;
 void* CIPHER_SUITE_WEP_128 ;
 void* CIPHER_SUITE_WEP_64 ;
 int EINPROGRESS ;
 int EINVAL ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_MODE ;
 int IW_ENCODE_NOKEY ;
 int IW_ENCODE_OPEN ;
 int IW_ENCODE_RESTRICTED ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int) ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_set_encode(struct net_device *dev,
       struct iw_request_info *info,
       struct iw_point *dwrq,
       char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);







 if (dwrq->length > 0) {
  int index = (dwrq->flags & IW_ENCODE_INDEX) - 1;
  int current_index = priv->default_key;

  if (dwrq->length > 13) {
   return -EINVAL;
  }

  if (index < 0 || index >= 4)
   index = current_index;
  else
   priv->default_key = index;

  if (dwrq->length > 5)
   priv->wep_key_len[index] = 13;
  else
   if (dwrq->length > 0)
    priv->wep_key_len[index] = 5;
   else

    priv->wep_key_len[index] = 0;

  if (!(dwrq->flags & IW_ENCODE_NOKEY)) {

   memset(priv->wep_keys[index], 0, 13);

   memcpy(priv->wep_keys[index], extra, dwrq->length);
  }



  if (index == current_index &&
      priv->wep_key_len[index] > 0) {
   priv->wep_is_on = 1;
   priv->exclude_unencrypted = 1;
   if (priv->wep_key_len[index] > 5) {
    priv->pairwise_cipher_suite = CIPHER_SUITE_WEP_128;
    priv->encryption_level = 2;
   } else {
    priv->pairwise_cipher_suite = CIPHER_SUITE_WEP_64;
    priv->encryption_level = 1;
   }
  }
 } else {

  int index = (dwrq->flags & IW_ENCODE_INDEX) - 1;
  if (index >= 0 && index < 4) {
   priv->default_key = index;
  } else

   if (!(dwrq->flags & IW_ENCODE_MODE))
    return -EINVAL;
 }

 if (dwrq->flags & IW_ENCODE_DISABLED) {
  priv->wep_is_on = 0;
  priv->encryption_level = 0;
  priv->pairwise_cipher_suite = CIPHER_SUITE_NONE;
 } else {
  priv->wep_is_on = 1;
  if (priv->wep_key_len[priv->default_key] > 5) {
   priv->pairwise_cipher_suite = CIPHER_SUITE_WEP_128;
   priv->encryption_level = 2;
  } else {
   priv->pairwise_cipher_suite = CIPHER_SUITE_WEP_64;
   priv->encryption_level = 1;
  }
 }
 if (dwrq->flags & IW_ENCODE_RESTRICTED)
  priv->exclude_unencrypted = 1;
 if (dwrq->flags & IW_ENCODE_OPEN)
  priv->exclude_unencrypted = 0;

 return -EINPROGRESS;
}
