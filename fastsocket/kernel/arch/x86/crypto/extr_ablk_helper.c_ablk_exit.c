
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct async_helper_ctx {int cryptd_tfm; } ;


 int cryptd_free_ablkcipher (int ) ;
 struct async_helper_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

void ablk_exit(struct crypto_tfm *tfm)
{
 struct async_helper_ctx *ctx = crypto_tfm_ctx(tfm);

 cryptd_free_ablkcipher(ctx->cryptd_tfm);
}
