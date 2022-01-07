
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtattr {int dummy; } ;
struct TYPE_3__ {int ivsize; int givencrypt; } ;
struct TYPE_4__ {TYPE_1__ cra_aead; int cra_ctxsize; int cra_exit; int cra_init; } ;
struct crypto_instance {TYPE_2__ alg; } ;


 scalar_t__ IS_ERR (struct crypto_instance*) ;
 struct crypto_instance* aead_geniv_alloc (int *,struct rtattr**,int ,int ) ;
 int aead_geniv_exit ;
 int seqiv_aead_givencrypt_first ;
 int seqiv_aead_init ;
 int seqiv_tmpl ;

__attribute__((used)) static struct crypto_instance *seqiv_aead_alloc(struct rtattr **tb)
{
 struct crypto_instance *inst;

 inst = aead_geniv_alloc(&seqiv_tmpl, tb, 0, 0);

 if (IS_ERR(inst))
  goto out;

 inst->alg.cra_aead.givencrypt = seqiv_aead_givencrypt_first;

 inst->alg.cra_init = seqiv_aead_init;
 inst->alg.cra_exit = aead_geniv_exit;

 inst->alg.cra_ctxsize = inst->alg.cra_aead.ivsize;

out:
 return inst;
}
