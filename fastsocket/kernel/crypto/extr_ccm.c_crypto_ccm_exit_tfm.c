
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto_ccm_ctx {int ctr; int cipher; } ;


 int crypto_free_ablkcipher (int ) ;
 int crypto_free_cipher (int ) ;
 struct crypto_ccm_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void crypto_ccm_exit_tfm(struct crypto_tfm *tfm)
{
 struct crypto_ccm_ctx *ctx = crypto_tfm_ctx(tfm);

 crypto_free_cipher(ctx->cipher);
 crypto_free_ablkcipher(ctx->ctr);
}
