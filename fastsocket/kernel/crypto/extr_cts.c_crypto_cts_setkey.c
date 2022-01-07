
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct crypto_cts_ctx {struct crypto_blkcipher* child; } ;
struct crypto_blkcipher {int dummy; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int crypto_blkcipher_clear_flags (struct crypto_blkcipher*,int) ;
 int crypto_blkcipher_get_flags (struct crypto_blkcipher*) ;
 int crypto_blkcipher_set_flags (struct crypto_blkcipher*,int) ;
 int crypto_blkcipher_setkey (struct crypto_blkcipher*,int const*,unsigned int) ;
 struct crypto_cts_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int crypto_tfm_get_flags (struct crypto_tfm*) ;
 int crypto_tfm_set_flags (struct crypto_tfm*,int) ;

__attribute__((used)) static int crypto_cts_setkey(struct crypto_tfm *parent, const u8 *key,
        unsigned int keylen)
{
 struct crypto_cts_ctx *ctx = crypto_tfm_ctx(parent);
 struct crypto_blkcipher *child = ctx->child;
 int err;

 crypto_blkcipher_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_blkcipher_set_flags(child, crypto_tfm_get_flags(parent) &
           CRYPTO_TFM_REQ_MASK);
 err = crypto_blkcipher_setkey(child, key, keylen);
 crypto_tfm_set_flags(parent, crypto_blkcipher_get_flags(child) &
         CRYPTO_TFM_RES_MASK);
 return err;
}
