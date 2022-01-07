
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int (* cra_destroy ) (struct crypto_alg*) ;int cra_refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int stub1 (struct crypto_alg*) ;

__attribute__((used)) static inline void crypto_alg_put(struct crypto_alg *alg)
{
 if (atomic_dec_and_test(&alg->cra_refcnt) && alg->cra_destroy)
  alg->cra_destroy(alg);
}
