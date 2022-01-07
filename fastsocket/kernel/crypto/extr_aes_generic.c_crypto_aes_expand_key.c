
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_aes_ctx {unsigned int key_length; int* key_dec; int* key_enc; } ;
typedef int __le32 ;





 int EINVAL ;
 int imix_col (int,int) ;
 void* le32_to_cpu (int const) ;
 int loop4 (int) ;
 int loop6 (int) ;
 int loop8 (int) ;
 int loop8tophalf (int) ;

int crypto_aes_expand_key(struct crypto_aes_ctx *ctx, const u8 *in_key,
  unsigned int key_len)
{
 const __le32 *key = (const __le32 *)in_key;
 u32 i, t, u, v, w, j;

 if (key_len != 130 && key_len != 129 &&
   key_len != 128)
  return -EINVAL;

 ctx->key_length = key_len;

 ctx->key_dec[key_len + 24] = ctx->key_enc[0] = le32_to_cpu(key[0]);
 ctx->key_dec[key_len + 25] = ctx->key_enc[1] = le32_to_cpu(key[1]);
 ctx->key_dec[key_len + 26] = ctx->key_enc[2] = le32_to_cpu(key[2]);
 ctx->key_dec[key_len + 27] = ctx->key_enc[3] = le32_to_cpu(key[3]);

 switch (key_len) {
 case 130:
  t = ctx->key_enc[3];
  for (i = 0; i < 10; ++i)
   loop4(i);
  break;

 case 129:
  ctx->key_enc[4] = le32_to_cpu(key[4]);
  t = ctx->key_enc[5] = le32_to_cpu(key[5]);
  for (i = 0; i < 8; ++i)
   loop6(i);
  break;

 case 128:
  ctx->key_enc[4] = le32_to_cpu(key[4]);
  ctx->key_enc[5] = le32_to_cpu(key[5]);
  ctx->key_enc[6] = le32_to_cpu(key[6]);
  t = ctx->key_enc[7] = le32_to_cpu(key[7]);
  for (i = 0; i < 6; ++i)
   loop8(i);
  loop8tophalf(i);
  break;
 }

 ctx->key_dec[0] = ctx->key_enc[key_len + 24];
 ctx->key_dec[1] = ctx->key_enc[key_len + 25];
 ctx->key_dec[2] = ctx->key_enc[key_len + 26];
 ctx->key_dec[3] = ctx->key_enc[key_len + 27];

 for (i = 4; i < key_len + 24; ++i) {
  j = key_len + 24 - (i & ~3) + (i & 3);
  imix_col(ctx->key_dec[j], ctx->key_enc[i]);
 }
 return 0;
}
