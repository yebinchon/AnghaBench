
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int crt_flags; } ;
struct aesni_xts_ctx {int raw_tweak_ctx; int raw_crypt_ctx; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int aes_set_key_common (struct crypto_tfm*,int ,int const*,unsigned int) ;
 struct aesni_xts_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int xts_aesni_setkey(struct crypto_tfm *tfm, const u8 *key,
       unsigned int keylen)
{
 struct aesni_xts_ctx *ctx = crypto_tfm_ctx(tfm);
 u32 *flags = &tfm->crt_flags;
 int err;




 if (keylen % 2) {
  *flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }


 err = aes_set_key_common(tfm, ctx->raw_crypt_ctx, key, keylen / 2);
 if (err)
  return err;


 return aes_set_key_common(tfm, ctx->raw_tweak_ctx, key + keylen / 2,
      keylen / 2);
}
