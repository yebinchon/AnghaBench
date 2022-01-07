
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_instance {int dummy; } ;
struct ccm_instance_ctx {int ctr; int cipher; } ;


 int crypto_drop_skcipher (int *) ;
 int crypto_drop_spawn (int *) ;
 struct ccm_instance_ctx* crypto_instance_ctx (struct crypto_instance*) ;
 int kfree (struct crypto_instance*) ;

__attribute__((used)) static void crypto_ccm_free(struct crypto_instance *inst)
{
 struct ccm_instance_ctx *ctx = crypto_instance_ctx(inst);

 crypto_drop_spawn(&ctx->cipher);
 crypto_drop_skcipher(&ctx->ctr);
 kfree(inst);
}
