
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_instance {int dummy; } ;
struct authenc_instance_ctx {int auth; int enc; } ;


 int crypto_drop_ahash (int *) ;
 int crypto_drop_skcipher (int *) ;
 struct authenc_instance_ctx* crypto_instance_ctx (struct crypto_instance*) ;
 int kfree (struct crypto_instance*) ;

__attribute__((used)) static void crypto_authenc_free(struct crypto_instance *inst)
{
 struct authenc_instance_ctx *ctx = crypto_instance_ctx(inst);

 crypto_drop_skcipher(&ctx->enc);
 crypto_drop_ahash(&ctx->auth);
 kfree(inst);
}
