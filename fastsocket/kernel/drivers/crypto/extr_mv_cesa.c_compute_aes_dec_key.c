
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_ctx {int key_len; scalar_t__ need_calc_aes_dkey; int * aes_dec_key; int aes_enc_key; } ;
struct crypto_aes_ctx {int * key_enc; } ;




 int crypto_aes_expand_key (struct crypto_aes_ctx*,int ,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void compute_aes_dec_key(struct mv_ctx *ctx)
{
 struct crypto_aes_ctx gen_aes_key;
 int key_pos;

 if (!ctx->need_calc_aes_dkey)
  return;

 crypto_aes_expand_key(&gen_aes_key, ctx->aes_enc_key, ctx->key_len);

 key_pos = ctx->key_len + 24;
 memcpy(ctx->aes_dec_key, &gen_aes_key.key_enc[key_pos], 4 * 4);
 switch (ctx->key_len) {
 case 128:
  key_pos -= 2;

 case 129:
  key_pos -= 2;
  memcpy(&ctx->aes_dec_key[4], &gen_aes_key.key_enc[key_pos],
    4 * 4);
  break;
 }
 ctx->need_calc_aes_dkey = 0;
}
