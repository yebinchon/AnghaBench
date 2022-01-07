
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_flags; int * cra_type; } ;
struct pcomp_alg {struct crypto_alg base; } ;


 int CRYPTO_ALG_TYPE_MASK ;
 int CRYPTO_ALG_TYPE_PCOMPRESS ;
 int crypto_pcomp_type ;
 int crypto_register_alg (struct crypto_alg*) ;

int crypto_register_pcomp(struct pcomp_alg *alg)
{
 struct crypto_alg *base = &alg->base;

 base->cra_type = &crypto_pcomp_type;
 base->cra_flags &= ~CRYPTO_ALG_TYPE_MASK;
 base->cra_flags |= CRYPTO_ALG_TYPE_PCOMPRESS;

 return crypto_register_alg(base);
}
