
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct TYPE_7__ {int givdecrypt; int givencrypt; int maxauthsize; int ivsize; int geniv; int setauthsize; int setkey; } ;
struct TYPE_5__ {int givdecrypt; int givencrypt; int decrypt; int encrypt; int maxauthsize; int ivsize; int geniv; int setauthsize; int setkey; } ;
struct TYPE_6__ {int cra_flags; int cra_ctxsize; TYPE_1__ cra_aead; int cra_exit; int cra_init; int cra_type; } ;
struct crypto_instance {TYPE_3__ cra_aead; TYPE_2__ alg; int cra_type; } ;
struct crypto_alg {TYPE_3__ cra_aead; TYPE_2__ alg; int cra_type; } ;
struct cryptd_queue {int dummy; } ;
struct cryptd_aead_ctx {int dummy; } ;
struct TYPE_8__ {int base; } ;
struct aead_instance_ctx {TYPE_4__ aead_spawn; struct cryptd_queue* queue; } ;


 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_TYPE_AEAD ;
 int CRYPTO_ALG_TYPE_MASK ;
 scalar_t__ IS_ERR (struct crypto_instance*) ;
 int PTR_ERR (struct crypto_instance*) ;
 int cryptd_aead_decrypt_enqueue ;
 int cryptd_aead_encrypt_enqueue ;
 int cryptd_aead_exit_tfm ;
 int cryptd_aead_init_tfm ;
 struct crypto_instance* cryptd_alloc_instance (struct crypto_instance*,int ,int) ;
 int crypto_drop_spawn (int *) ;
 struct crypto_instance* crypto_get_attr_alg (struct rtattr**,int,int) ;
 int crypto_init_spawn (int *,struct crypto_instance*,struct crypto_instance*,int) ;
 struct aead_instance_ctx* crypto_instance_ctx (struct crypto_instance*) ;
 int crypto_mod_put (struct crypto_instance*) ;
 int crypto_register_instance (struct crypto_template*,struct crypto_instance*) ;
 int kfree (struct crypto_instance*) ;

__attribute__((used)) static int cryptd_create_aead(struct crypto_template *tmpl,
                struct rtattr **tb,
         struct cryptd_queue *queue)
{
 struct aead_instance_ctx *ctx;
 struct crypto_instance *inst;
 struct crypto_alg *alg;
 int err;

 alg = crypto_get_attr_alg(tb, CRYPTO_ALG_TYPE_AEAD,
    CRYPTO_ALG_TYPE_MASK);
        if (IS_ERR(alg))
  return PTR_ERR(alg);

 inst = cryptd_alloc_instance(alg, 0, sizeof(*ctx));
 err = PTR_ERR(inst);
 if (IS_ERR(inst))
  goto out_put_alg;

 ctx = crypto_instance_ctx(inst);
 ctx->queue = queue;

 err = crypto_init_spawn(&ctx->aead_spawn.base, alg, inst,
   CRYPTO_ALG_TYPE_MASK | CRYPTO_ALG_ASYNC);
 if (err)
  goto out_free_inst;

 inst->alg.cra_flags = CRYPTO_ALG_TYPE_AEAD | CRYPTO_ALG_ASYNC;
 inst->alg.cra_type = alg->cra_type;
 inst->alg.cra_ctxsize = sizeof(struct cryptd_aead_ctx);
 inst->alg.cra_init = cryptd_aead_init_tfm;
 inst->alg.cra_exit = cryptd_aead_exit_tfm;
 inst->alg.cra_aead.setkey = alg->cra_aead.setkey;
 inst->alg.cra_aead.setauthsize = alg->cra_aead.setauthsize;
 inst->alg.cra_aead.geniv = alg->cra_aead.geniv;
 inst->alg.cra_aead.ivsize = alg->cra_aead.ivsize;
 inst->alg.cra_aead.maxauthsize = alg->cra_aead.maxauthsize;
 inst->alg.cra_aead.encrypt = cryptd_aead_encrypt_enqueue;
 inst->alg.cra_aead.decrypt = cryptd_aead_decrypt_enqueue;
 inst->alg.cra_aead.givencrypt = alg->cra_aead.givencrypt;
 inst->alg.cra_aead.givdecrypt = alg->cra_aead.givdecrypt;

 err = crypto_register_instance(tmpl, inst);
 if (err) {
  crypto_drop_spawn(&ctx->aead_spawn.base);
out_free_inst:
  kfree(inst);
 }
out_put_alg:
 crypto_mod_put(alg);
 return err;
}
