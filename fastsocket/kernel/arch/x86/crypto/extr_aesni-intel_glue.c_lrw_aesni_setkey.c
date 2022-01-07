
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct aesni_lrw_ctx {int lrw_table; int raw_aes_ctx; } ;


 int AES_BLOCK_SIZE ;
 int aes_set_key_common (struct crypto_tfm*,int ,int const*,int) ;
 struct aesni_lrw_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int lrw_init_table (int *,int const*) ;

__attribute__((used)) static int lrw_aesni_setkey(struct crypto_tfm *tfm, const u8 *key,
       unsigned int keylen)
{
 struct aesni_lrw_ctx *ctx = crypto_tfm_ctx(tfm);
 int err;

 err = aes_set_key_common(tfm, ctx->raw_aes_ctx, key,
     keylen - AES_BLOCK_SIZE);
 if (err)
  return err;

 return lrw_init_table(&ctx->lrw_table, key + keylen - AES_BLOCK_SIZE);
}
