
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xtea_ctx {int* KEY; } ;
struct crypto_tfm {int dummy; } ;
typedef int __le32 ;


 int XTEA_DELTA ;
 int XTEA_ROUNDS ;
 int cpu_to_le32 (int) ;
 struct xtea_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int le32_to_cpu (int const) ;

__attribute__((used)) static void xtea_encrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 u32 y, z, sum = 0;
 u32 limit = XTEA_DELTA * XTEA_ROUNDS;
 struct xtea_ctx *ctx = crypto_tfm_ctx(tfm);
 const __le32 *in = (const __le32 *)src;
 __le32 *out = (__le32 *)dst;

 y = le32_to_cpu(in[0]);
 z = le32_to_cpu(in[1]);

 while (sum != limit) {
  y += ((z << 4 ^ z >> 5) + z) ^ (sum + ctx->KEY[sum&3]);
  sum += XTEA_DELTA;
  z += ((y << 4 ^ y >> 5) + y) ^ (sum + ctx->KEY[sum>>11 &3]);
 }

 out[0] = cpu_to_le32(y);
 out[1] = cpu_to_le32(z);
}
