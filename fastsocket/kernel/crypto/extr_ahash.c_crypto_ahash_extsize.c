
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_shash {int dummy; } ;
struct crypto_alg {unsigned int cra_ctxsize; int * cra_type; } ;


 int crypto_ahash_type ;

__attribute__((used)) static unsigned int crypto_ahash_extsize(struct crypto_alg *alg)
{
 if (alg->cra_type == &crypto_ahash_type)
  return alg->cra_ctxsize;

 return sizeof(struct crypto_shash *);
}
