
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct des_ctx {int * expkey; } ;
struct crypto_tfm {int dummy; } ;
typedef int __le32 ;


 int DES_EXPKEY_WORDS ;
 int FP (int ,int ,int ) ;
 int IP (int ,int ,int ) ;
 int ROUND (int ,int ,int ,int ,int const*,int) ;
 int cpu_to_le32 (int ) ;
 struct des_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int le32_to_cpu (int const) ;

__attribute__((used)) static void des_decrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 struct des_ctx *ctx = crypto_tfm_ctx(tfm);
 const u32 *K = ctx->expkey + DES_EXPKEY_WORDS - 2;
 const __le32 *s = (const __le32 *)src;
 __le32 *d = (__le32 *)dst;
 u32 L, R, A, B;
 int i;

 L = le32_to_cpu(s[0]);
 R = le32_to_cpu(s[1]);

 IP(L, R, A);
 for (i = 0; i < 8; i++) {
  ROUND(L, R, A, B, K, -2);
  ROUND(R, L, A, B, K, -2);
 }
 FP(R, L, A);

 d[0] = cpu_to_le32(R);
 d[1] = cpu_to_le32(L);
}
