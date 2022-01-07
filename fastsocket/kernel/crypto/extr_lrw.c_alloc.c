
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtattr {int dummy; } ;
struct priv {int dummy; } ;
struct TYPE_5__ {int ivsize; int decrypt; int encrypt; int setkey; scalar_t__ max_keysize; scalar_t__ min_keysize; } ;
struct TYPE_6__ {int cra_blocksize; int cra_alignmask; int cra_ctxsize; TYPE_2__ cra_blkcipher; int cra_exit; int cra_init; int * cra_type; int cra_priority; int cra_flags; } ;
struct TYPE_4__ {scalar_t__ cia_max_keysize; scalar_t__ cia_min_keysize; } ;
struct crypto_instance {int cra_blocksize; int cra_alignmask; TYPE_3__ alg; TYPE_1__ cra_cipher; int cra_priority; } ;
struct crypto_alg {int cra_blocksize; int cra_alignmask; TYPE_3__ alg; TYPE_1__ cra_cipher; int cra_priority; } ;


 int CRYPTO_ALG_TYPE_BLKCIPHER ;
 int CRYPTO_ALG_TYPE_CIPHER ;
 int CRYPTO_ALG_TYPE_MASK ;
 struct crypto_instance* ERR_CAST (struct crypto_instance*) ;
 struct crypto_instance* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct crypto_instance*) ;
 struct crypto_instance* crypto_alloc_instance (char*,struct crypto_instance*) ;
 int crypto_blkcipher_type ;
 int crypto_check_attr_type (struct rtattr**,int ) ;
 struct crypto_instance* crypto_get_attr_alg (struct rtattr**,int ,int ) ;
 int crypto_mod_put (struct crypto_instance*) ;
 int decrypt ;
 int encrypt ;
 int exit_tfm ;
 int init_tfm ;
 int setkey ;

__attribute__((used)) static struct crypto_instance *alloc(struct rtattr **tb)
{
 struct crypto_instance *inst;
 struct crypto_alg *alg;
 int err;

 err = crypto_check_attr_type(tb, CRYPTO_ALG_TYPE_BLKCIPHER);
 if (err)
  return ERR_PTR(err);

 alg = crypto_get_attr_alg(tb, CRYPTO_ALG_TYPE_CIPHER,
      CRYPTO_ALG_TYPE_MASK);
 if (IS_ERR(alg))
  return ERR_CAST(alg);

 inst = crypto_alloc_instance("lrw", alg);
 if (IS_ERR(inst))
  goto out_put_alg;

 inst->alg.cra_flags = CRYPTO_ALG_TYPE_BLKCIPHER;
 inst->alg.cra_priority = alg->cra_priority;
 inst->alg.cra_blocksize = alg->cra_blocksize;

 if (alg->cra_alignmask < 7) inst->alg.cra_alignmask = 7;
 else inst->alg.cra_alignmask = alg->cra_alignmask;
 inst->alg.cra_type = &crypto_blkcipher_type;

 if (!(alg->cra_blocksize % 4))
  inst->alg.cra_alignmask |= 3;
 inst->alg.cra_blkcipher.ivsize = alg->cra_blocksize;
 inst->alg.cra_blkcipher.min_keysize =
  alg->cra_cipher.cia_min_keysize + alg->cra_blocksize;
 inst->alg.cra_blkcipher.max_keysize =
  alg->cra_cipher.cia_max_keysize + alg->cra_blocksize;

 inst->alg.cra_ctxsize = sizeof(struct priv);

 inst->alg.cra_init = init_tfm;
 inst->alg.cra_exit = exit_tfm;

 inst->alg.cra_blkcipher.setkey = setkey;
 inst->alg.cra_blkcipher.encrypt = encrypt;
 inst->alg.cra_blkcipher.decrypt = decrypt;

out_put_alg:
 crypto_mod_put(alg);
 return inst;
}
