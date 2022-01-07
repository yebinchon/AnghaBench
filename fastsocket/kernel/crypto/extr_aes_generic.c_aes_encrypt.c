
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int dummy; } ;
struct crypto_aes_ctx {int* key_enc; int key_length; } ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;
 struct crypto_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int f_lround (int*,int*,int const*) ;
 int f_nround (int*,int*,int const*) ;
 int le32_to_cpu (int const) ;

__attribute__((used)) static void aes_encrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 const struct crypto_aes_ctx *ctx = crypto_tfm_ctx(tfm);
 const __le32 *src = (const __le32 *)in;
 __le32 *dst = (__le32 *)out;
 u32 b0[4], b1[4];
 const u32 *kp = ctx->key_enc + 4;
 const int key_len = ctx->key_length;

 b0[0] = le32_to_cpu(src[0]) ^ ctx->key_enc[0];
 b0[1] = le32_to_cpu(src[1]) ^ ctx->key_enc[1];
 b0[2] = le32_to_cpu(src[2]) ^ ctx->key_enc[2];
 b0[3] = le32_to_cpu(src[3]) ^ ctx->key_enc[3];

 if (key_len > 24) {
  f_nround(b1, b0, kp);
  f_nround(b0, b1, kp);
 }

 if (key_len > 16) {
  f_nround(b1, b0, kp);
  f_nround(b0, b1, kp);
 }

 f_nround(b1, b0, kp);
 f_nround(b0, b1, kp);
 f_nround(b1, b0, kp);
 f_nround(b0, b1, kp);
 f_nround(b1, b0, kp);
 f_nround(b0, b1, kp);
 f_nround(b1, b0, kp);
 f_nround(b0, b1, kp);
 f_nround(b1, b0, kp);
 f_lround(b0, b1, kp);

 dst[0] = cpu_to_le32(b0[0]);
 dst[1] = cpu_to_le32(b0[1]);
 dst[2] = cpu_to_le32(b0[2]);
 dst[3] = cpu_to_le32(b0[3]);
}
