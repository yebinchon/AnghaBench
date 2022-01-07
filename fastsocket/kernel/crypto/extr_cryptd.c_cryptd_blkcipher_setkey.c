
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_blkcipher {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct cryptd_blkcipher_ctx {struct crypto_blkcipher* child; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 struct cryptd_blkcipher_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_get_flags (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int) ;
 int crypto_blkcipher_clear_flags (struct crypto_blkcipher*,int) ;
 int crypto_blkcipher_get_flags (struct crypto_blkcipher*) ;
 int crypto_blkcipher_set_flags (struct crypto_blkcipher*,int) ;
 int crypto_blkcipher_setkey (struct crypto_blkcipher*,int const*,unsigned int) ;

__attribute__((used)) static int cryptd_blkcipher_setkey(struct crypto_ablkcipher *parent,
       const u8 *key, unsigned int keylen)
{
 struct cryptd_blkcipher_ctx *ctx = crypto_ablkcipher_ctx(parent);
 struct crypto_blkcipher *child = ctx->child;
 int err;

 crypto_blkcipher_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_blkcipher_set_flags(child, crypto_ablkcipher_get_flags(parent) &
       CRYPTO_TFM_REQ_MASK);
 err = crypto_blkcipher_setkey(child, key, keylen);
 crypto_ablkcipher_set_flags(parent, crypto_blkcipher_get_flags(child) &
         CRYPTO_TFM_RES_MASK);
 return err;
}
