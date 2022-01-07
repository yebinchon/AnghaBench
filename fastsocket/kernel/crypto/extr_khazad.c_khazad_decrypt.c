
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct khazad_ctx {int D; } ;
struct crypto_tfm {int dummy; } ;


 struct khazad_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int khazad_crypt (int ,int *,int const*) ;

__attribute__((used)) static void khazad_decrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 struct khazad_ctx *ctx = crypto_tfm_ctx(tfm);
 khazad_crypt(ctx->D, dst, src);
}
