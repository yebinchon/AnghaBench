
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;
struct async_helper_ctx {TYPE_1__* cryptd_tfm; } ;
struct TYPE_2__ {struct crypto_ablkcipher base; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int crypto_ablkcipher_clear_flags (struct crypto_ablkcipher*,int) ;
 struct async_helper_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_get_flags (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int) ;
 int crypto_ablkcipher_setkey (struct crypto_ablkcipher*,int const*,unsigned int) ;

int ablk_set_key(struct crypto_ablkcipher *tfm, const u8 *key,
   unsigned int key_len)
{
 struct async_helper_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 struct crypto_ablkcipher *child = &ctx->cryptd_tfm->base;
 int err;

 crypto_ablkcipher_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_ablkcipher_set_flags(child, crypto_ablkcipher_get_flags(tfm)
        & CRYPTO_TFM_REQ_MASK);
 err = crypto_ablkcipher_setkey(child, key, key_len);
 crypto_ablkcipher_set_flags(tfm, crypto_ablkcipher_get_flags(child)
        & CRYPTO_TFM_RES_MASK);
 return err;
}
