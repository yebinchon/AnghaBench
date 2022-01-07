
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_alg {int cra_flags; int * cra_type; } ;
struct TYPE_2__ {int digestsize; int statesize; struct crypto_alg base; } ;
struct ahash_alg {TYPE_1__ halg; } ;


 int CRYPTO_ALG_TYPE_AHASH ;
 int CRYPTO_ALG_TYPE_MASK ;
 int EINVAL ;
 int PAGE_SIZE ;
 int crypto_ahash_type ;

__attribute__((used)) static int ahash_prepare_alg(struct ahash_alg *alg)
{
 struct crypto_alg *base = &alg->halg.base;

 if (alg->halg.digestsize > PAGE_SIZE / 8 ||
     alg->halg.statesize > PAGE_SIZE / 8)
  return -EINVAL;

 base->cra_type = &crypto_ahash_type;
 base->cra_flags &= ~CRYPTO_ALG_TYPE_MASK;
 base->cra_flags |= CRYPTO_ALG_TYPE_AHASH;

 return 0;
}
