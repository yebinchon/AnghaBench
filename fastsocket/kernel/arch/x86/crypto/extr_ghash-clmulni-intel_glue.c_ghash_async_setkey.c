
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ghash_async_ctx {TYPE_1__* cryptd_tfm; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_2__ {struct crypto_ahash base; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int crypto_ahash_clear_flags (struct crypto_ahash*,int) ;
 struct ghash_async_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_get_flags (struct crypto_ahash*) ;
 int crypto_ahash_set_flags (struct crypto_ahash*,int) ;
 int crypto_ahash_setkey (struct crypto_ahash*,int const*,unsigned int) ;

__attribute__((used)) static int ghash_async_setkey(struct crypto_ahash *tfm, const u8 *key,
         unsigned int keylen)
{
 struct ghash_async_ctx *ctx = crypto_ahash_ctx(tfm);
 struct crypto_ahash *child = &ctx->cryptd_tfm->base;
 int err;

 crypto_ahash_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_ahash_set_flags(child, crypto_ahash_get_flags(tfm)
          & CRYPTO_TFM_REQ_MASK);
 err = crypto_ahash_setkey(child, key, keylen);
 crypto_ahash_set_flags(tfm, crypto_ahash_get_flags(child)
          & CRYPTO_TFM_RES_MASK);

 return err;
}
