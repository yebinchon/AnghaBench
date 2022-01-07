
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcm_instance_ctx {int ghash; int ctr; } ;
struct crypto_instance {int dummy; } ;


 int crypto_drop_ahash (int *) ;
 int crypto_drop_skcipher (int *) ;
 struct gcm_instance_ctx* crypto_instance_ctx (struct crypto_instance*) ;
 int kfree (struct crypto_instance*) ;

__attribute__((used)) static void crypto_gcm_free(struct crypto_instance *inst)
{
 struct gcm_instance_ctx *ctx = crypto_instance_ctx(inst);

 crypto_drop_skcipher(&ctx->ctr);
 crypto_drop_ahash(&ctx->ghash);
 kfree(inst);
}
