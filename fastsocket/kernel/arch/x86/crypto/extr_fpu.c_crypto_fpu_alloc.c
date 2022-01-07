
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtattr {int dummy; } ;
struct TYPE_5__ {int decrypt; int encrypt; int setkey; int max_keysize; int min_keysize; int ivsize; } ;
struct TYPE_6__ {int cra_ctxsize; TYPE_2__ cra_blkcipher; int cra_exit; int cra_init; int cra_type; int cra_alignmask; int cra_blocksize; int cra_priority; int cra_flags; } ;
struct TYPE_4__ {int max_keysize; int min_keysize; int ivsize; } ;
struct crypto_instance {TYPE_3__ alg; TYPE_1__ cra_blkcipher; int cra_type; int cra_alignmask; int cra_blocksize; int cra_priority; int cra_flags; } ;
struct crypto_fpu_ctx {int dummy; } ;
struct crypto_alg {TYPE_3__ alg; TYPE_1__ cra_blkcipher; int cra_type; int cra_alignmask; int cra_blocksize; int cra_priority; int cra_flags; } ;


 int CRYPTO_ALG_TYPE_BLKCIPHER ;
 int CRYPTO_ALG_TYPE_MASK ;
 struct crypto_instance* ERR_CAST (struct crypto_instance*) ;
 struct crypto_instance* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct crypto_instance*) ;
 struct crypto_instance* crypto_alloc_instance (char*,struct crypto_instance*) ;
 int crypto_check_attr_type (struct rtattr**,int ) ;
 int crypto_fpu_decrypt ;
 int crypto_fpu_encrypt ;
 int crypto_fpu_exit_tfm ;
 int crypto_fpu_init_tfm ;
 int crypto_fpu_setkey ;
 struct crypto_instance* crypto_get_attr_alg (struct rtattr**,int ,int ) ;
 int crypto_mod_put (struct crypto_instance*) ;

__attribute__((used)) static struct crypto_instance *crypto_fpu_alloc(struct rtattr **tb)
{
 struct crypto_instance *inst;
 struct crypto_alg *alg;
 int err;

 err = crypto_check_attr_type(tb, CRYPTO_ALG_TYPE_BLKCIPHER);
 if (err)
  return ERR_PTR(err);

 alg = crypto_get_attr_alg(tb, CRYPTO_ALG_TYPE_BLKCIPHER,
      CRYPTO_ALG_TYPE_MASK);
 if (IS_ERR(alg))
  return ERR_CAST(alg);

 inst = crypto_alloc_instance("fpu", alg);
 if (IS_ERR(inst))
  goto out_put_alg;

 inst->alg.cra_flags = alg->cra_flags;
 inst->alg.cra_priority = alg->cra_priority;
 inst->alg.cra_blocksize = alg->cra_blocksize;
 inst->alg.cra_alignmask = alg->cra_alignmask;
 inst->alg.cra_type = alg->cra_type;
 inst->alg.cra_blkcipher.ivsize = alg->cra_blkcipher.ivsize;
 inst->alg.cra_blkcipher.min_keysize = alg->cra_blkcipher.min_keysize;
 inst->alg.cra_blkcipher.max_keysize = alg->cra_blkcipher.max_keysize;
 inst->alg.cra_ctxsize = sizeof(struct crypto_fpu_ctx);
 inst->alg.cra_init = crypto_fpu_init_tfm;
 inst->alg.cra_exit = crypto_fpu_exit_tfm;
 inst->alg.cra_blkcipher.setkey = crypto_fpu_setkey;
 inst->alg.cra_blkcipher.encrypt = crypto_fpu_encrypt;
 inst->alg.cra_blkcipher.decrypt = crypto_fpu_decrypt;

out_put_alg:
 crypto_mod_put(alg);
 return inst;
}
