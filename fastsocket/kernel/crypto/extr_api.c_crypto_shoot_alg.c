
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_flags; } ;


 int CRYPTO_ALG_DYING ;
 int crypto_alg_sem ;
 int down_write (int *) ;
 int up_write (int *) ;

void crypto_shoot_alg(struct crypto_alg *alg)
{
 down_write(&crypto_alg_sem);
 alg->cra_flags |= CRYPTO_ALG_DYING;
 up_write(&crypto_alg_sem);
}
