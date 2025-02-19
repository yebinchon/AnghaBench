
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cra_ctxsize; int cra_exit; int cra_init; int cra_flags; } ;
struct TYPE_5__ {TYPE_1__ base; int digestsize; } ;
struct TYPE_6__ {int digest; int setkey; int import; int export; int finup; int final; int update; int init; TYPE_2__ halg; } ;
struct crypto_alg {int dummy; } ;
struct shash_alg {TYPE_3__ alg; int digestsize; struct crypto_alg base; } ;
struct rtattr {int dummy; } ;
struct hashd_instance_ctx {int spawn; struct cryptd_queue* queue; } ;
struct crypto_template {int dummy; } ;
struct cryptd_queue {int dummy; } ;
struct cryptd_hash_ctx {int dummy; } ;
struct ahash_instance {TYPE_3__ alg; int digestsize; struct crypto_alg base; } ;


 int CRYPTO_ALG_ASYNC ;
 scalar_t__ IS_ERR (struct shash_alg*) ;
 int PTR_ERR (struct shash_alg*) ;
 int ahash_crypto_instance (struct shash_alg*) ;
 struct hashd_instance_ctx* ahash_instance_ctx (struct shash_alg*) ;
 int ahash_instance_headroom () ;
 int ahash_register_instance (struct crypto_template*,struct shash_alg*) ;
 struct shash_alg* cryptd_alloc_instance (struct crypto_alg*,int ,int) ;
 int cryptd_hash_digest_enqueue ;
 int cryptd_hash_exit_tfm ;
 int cryptd_hash_export ;
 int cryptd_hash_final_enqueue ;
 int cryptd_hash_finup_enqueue ;
 int cryptd_hash_import ;
 int cryptd_hash_init_enqueue ;
 int cryptd_hash_init_tfm ;
 int cryptd_hash_setkey ;
 int cryptd_hash_update_enqueue ;
 int crypto_drop_shash (int *) ;
 int crypto_init_shash_spawn (int *,struct shash_alg*,int ) ;
 int crypto_mod_put (struct crypto_alg*) ;
 int kfree (struct shash_alg*) ;
 struct shash_alg* shash_attr_alg (struct rtattr*,int ,int ) ;

__attribute__((used)) static int cryptd_create_hash(struct crypto_template *tmpl, struct rtattr **tb,
         struct cryptd_queue *queue)
{
 struct hashd_instance_ctx *ctx;
 struct ahash_instance *inst;
 struct shash_alg *salg;
 struct crypto_alg *alg;
 int err;

 salg = shash_attr_alg(tb[1], 0, 0);
 if (IS_ERR(salg))
  return PTR_ERR(salg);

 alg = &salg->base;
 inst = cryptd_alloc_instance(alg, ahash_instance_headroom(),
         sizeof(*ctx));
 err = PTR_ERR(inst);
 if (IS_ERR(inst))
  goto out_put_alg;

 ctx = ahash_instance_ctx(inst);
 ctx->queue = queue;

 err = crypto_init_shash_spawn(&ctx->spawn, salg,
          ahash_crypto_instance(inst));
 if (err)
  goto out_free_inst;

 inst->alg.halg.base.cra_flags = CRYPTO_ALG_ASYNC;

 inst->alg.halg.digestsize = salg->digestsize;
 inst->alg.halg.base.cra_ctxsize = sizeof(struct cryptd_hash_ctx);

 inst->alg.halg.base.cra_init = cryptd_hash_init_tfm;
 inst->alg.halg.base.cra_exit = cryptd_hash_exit_tfm;

 inst->alg.init = cryptd_hash_init_enqueue;
 inst->alg.update = cryptd_hash_update_enqueue;
 inst->alg.final = cryptd_hash_final_enqueue;
 inst->alg.finup = cryptd_hash_finup_enqueue;
 inst->alg.export = cryptd_hash_export;
 inst->alg.import = cryptd_hash_import;
 inst->alg.setkey = cryptd_hash_setkey;
 inst->alg.digest = cryptd_hash_digest_enqueue;

 err = ahash_register_instance(tmpl, inst);
 if (err) {
  crypto_drop_shash(&ctx->spawn);
out_free_inst:
  kfree(inst);
 }

out_put_alg:
 crypto_mod_put(alg);
 return err;
}
