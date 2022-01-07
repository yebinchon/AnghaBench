
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ghash_ctx {scalar_t__ gf128; } ;
struct crypto_shash {int dummy; } ;
typedef int be128 ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int ENOMEM ;
 unsigned int GHASH_BLOCK_SIZE ;
 struct ghash_ctx* crypto_shash_ctx (struct crypto_shash*) ;
 int crypto_shash_set_flags (struct crypto_shash*,int ) ;
 int gf128mul_free_4k (scalar_t__) ;
 scalar_t__ gf128mul_init_4k_lle (int *) ;

__attribute__((used)) static int ghash_setkey(struct crypto_shash *tfm,
   const u8 *key, unsigned int keylen)
{
 struct ghash_ctx *ctx = crypto_shash_ctx(tfm);

 if (keylen != GHASH_BLOCK_SIZE) {
  crypto_shash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 if (ctx->gf128)
  gf128mul_free_4k(ctx->gf128);
 ctx->gf128 = gf128mul_init_4k_lle((be128 *)key);
 if (!ctx->gf128)
  return -ENOMEM;

 return 0;
}
