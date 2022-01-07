
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int const) ;
 int cpu_to_be32 (int ) ;
 int crypto_tfm_ctx (struct crypto_tfm*) ;
 int encrypt_block (int ,int *,int *) ;

__attribute__((used)) static void bf_encrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 const __be32 *in_blk = (const __be32 *)src;
 __be32 *const out_blk = (__be32 *)dst;
 u32 in32[2], out32[2];

 in32[0] = be32_to_cpu(in_blk[0]);
 in32[1] = be32_to_cpu(in_blk[1]);
 encrypt_block(crypto_tfm_ctx(tfm), out32, in32);
 out_blk[0] = cpu_to_be32(out32[0]);
 out_blk[1] = cpu_to_be32(out32[1]);
}
