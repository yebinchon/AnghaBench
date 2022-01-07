
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hashd_instance_ctx {int spawn; } ;
struct TYPE_3__ {int cra_flags; } ;
struct crypto_instance {TYPE_1__ alg; } ;
struct cryptd_instance_ctx {int spawn; } ;
struct TYPE_4__ {int base; } ;
struct aead_instance_ctx {TYPE_2__ aead_spawn; } ;




 int CRYPTO_ALG_TYPE_MASK ;
 struct crypto_instance* ahash_instance (struct crypto_instance*) ;
 int crypto_drop_shash (int *) ;
 int crypto_drop_spawn (int *) ;
 void* crypto_instance_ctx (struct crypto_instance*) ;
 int kfree (struct crypto_instance*) ;

__attribute__((used)) static void cryptd_free(struct crypto_instance *inst)
{
 struct cryptd_instance_ctx *ctx = crypto_instance_ctx(inst);
 struct hashd_instance_ctx *hctx = crypto_instance_ctx(inst);
 struct aead_instance_ctx *aead_ctx = crypto_instance_ctx(inst);

 switch (inst->alg.cra_flags & CRYPTO_ALG_TYPE_MASK) {
 case 128:
  crypto_drop_shash(&hctx->spawn);
  kfree(ahash_instance(inst));
  return;
 case 129:
  crypto_drop_spawn(&aead_ctx->aead_spawn.base);
  kfree(inst);
  return;
 default:
  crypto_drop_spawn(&ctx->spawn);
  kfree(inst);
 }
}
