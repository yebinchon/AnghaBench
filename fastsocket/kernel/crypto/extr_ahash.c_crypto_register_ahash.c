
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_alg {int dummy; } ;
struct TYPE_2__ {struct crypto_alg base; } ;
struct ahash_alg {TYPE_1__ halg; } ;


 int ahash_prepare_alg (struct ahash_alg*) ;
 int crypto_register_alg (struct crypto_alg*) ;

int crypto_register_ahash(struct ahash_alg *alg)
{
 struct crypto_alg *base = &alg->halg.base;
 int err;

 err = ahash_prepare_alg(alg);
 if (err)
  return err;

 return crypto_register_alg(base);
}
