
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int exit; struct crypto_alg* __crt_alg; } ;
struct crypto_alg {int (* cra_exit ) (struct crypto_tfm*) ;} ;


 int crypto_exit_ops (struct crypto_tfm*) ;
 int crypto_mod_put (struct crypto_alg*) ;
 int kzfree (void*) ;
 int stub1 (struct crypto_tfm*) ;
 scalar_t__ unlikely (int) ;

void crypto_destroy_tfm(void *mem, struct crypto_tfm *tfm)
{
 struct crypto_alg *alg;

 if (unlikely(!mem))
  return;

 alg = tfm->__crt_alg;

 if (!tfm->exit && alg->cra_exit)
  alg->cra_exit(tfm);
 crypto_exit_ops(tfm);
 crypto_mod_put(alg);
 kzfree(mem);
}
