
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aes_ctx {int dummy; } ;


 int aes_enc_blk (struct crypto_aes_ctx*,int *,int const*) ;

void crypto_aes_encrypt_x86(struct crypto_aes_ctx *ctx, u8 *dst, const u8 *src)
{
 aes_enc_blk(ctx, dst, src);
}
