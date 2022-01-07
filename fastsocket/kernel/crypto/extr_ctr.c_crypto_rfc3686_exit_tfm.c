
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto_rfc3686_ctx {int child; } ;


 int crypto_free_ablkcipher (int ) ;
 struct crypto_rfc3686_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void crypto_rfc3686_exit_tfm(struct crypto_tfm *tfm)
{
 struct crypto_rfc3686_ctx *ctx = crypto_tfm_ctx(tfm);

 crypto_free_ablkcipher(ctx->child);
}
