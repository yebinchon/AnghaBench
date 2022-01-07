
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hifn_device {int flags; } ;
struct hifn_context {unsigned int keysize; int key; struct hifn_device* dev; } ;
struct crypto_tfm {int crt_flags; } ;
struct crypto_ablkcipher {int dummy; } ;


 int CRYPTO_TFM_REQ_WEAK_KEY ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int CRYPTO_TFM_RES_WEAK_KEY ;
 int DES_EXPKEY_WORDS ;
 int EINVAL ;
 unsigned int HIFN_DES_KEY_LENGTH ;
 int HIFN_FLAG_OLD_KEY ;
 unsigned int HIFN_MAX_CRYPT_KEY_LENGTH ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;
 struct crypto_tfm* crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 struct hifn_context* crypto_tfm_ctx (struct crypto_tfm*) ;
 int des_ekey (int *,int const*) ;
 int memcpy (int ,int const*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hifn_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
  unsigned int len)
{
 struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
 struct hifn_context *ctx = crypto_tfm_ctx(tfm);
 struct hifn_device *dev = ctx->dev;

 if (len > HIFN_MAX_CRYPT_KEY_LENGTH) {
  crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -1;
 }

 if (len == HIFN_DES_KEY_LENGTH) {
  u32 tmp[DES_EXPKEY_WORDS];
  int ret = des_ekey(tmp, key);

  if (unlikely(ret == 0) && (tfm->crt_flags & CRYPTO_TFM_REQ_WEAK_KEY)) {
   tfm->crt_flags |= CRYPTO_TFM_RES_WEAK_KEY;
   return -EINVAL;
  }
 }

 dev->flags &= ~HIFN_FLAG_OLD_KEY;

 memcpy(ctx->key, key, len);
 ctx->keysize = len;

 return 0;
}
