
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_rfc4106_ctx {int nonce; struct crypto_aead* child; } ;
struct crypto_aead {int dummy; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int EINVAL ;
 int crypto_aead_clear_flags (struct crypto_aead*,int) ;
 struct crypto_rfc4106_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_get_flags (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int) ;
 int crypto_aead_setkey (struct crypto_aead*,int const*,unsigned int) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int crypto_rfc4106_setkey(struct crypto_aead *parent, const u8 *key,
     unsigned int keylen)
{
 struct crypto_rfc4106_ctx *ctx = crypto_aead_ctx(parent);
 struct crypto_aead *child = ctx->child;
 int err;

 if (keylen < 4)
  return -EINVAL;

 keylen -= 4;
 memcpy(ctx->nonce, key + keylen, 4);

 crypto_aead_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_aead_set_flags(child, crypto_aead_get_flags(parent) &
         CRYPTO_TFM_REQ_MASK);
 err = crypto_aead_setkey(child, key, keylen);
 crypto_aead_set_flags(parent, crypto_aead_get_flags(child) &
          CRYPTO_TFM_RES_MASK);

 return err;
}
