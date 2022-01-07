
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtattr {int dummy; } ;
struct TYPE_3__ {scalar_t__ ivsize; int givencrypt; } ;
struct TYPE_4__ {TYPE_1__ cra_ablkcipher; int cra_ctxsize; int cra_exit; int cra_init; } ;
struct crypto_instance {TYPE_2__ alg; } ;


 scalar_t__ IS_ERR (struct crypto_instance*) ;
 int seqiv_givencrypt_first ;
 int seqiv_init ;
 int seqiv_tmpl ;
 struct crypto_instance* skcipher_geniv_alloc (int *,struct rtattr**,int ,int ) ;
 int skcipher_geniv_exit ;

__attribute__((used)) static struct crypto_instance *seqiv_ablkcipher_alloc(struct rtattr **tb)
{
 struct crypto_instance *inst;

 inst = skcipher_geniv_alloc(&seqiv_tmpl, tb, 0, 0);

 if (IS_ERR(inst))
  goto out;

 inst->alg.cra_ablkcipher.givencrypt = seqiv_givencrypt_first;

 inst->alg.cra_init = seqiv_init;
 inst->alg.cra_exit = skcipher_geniv_exit;

 inst->alg.cra_ctxsize += inst->alg.cra_ablkcipher.ivsize;

out:
 return inst;
}
