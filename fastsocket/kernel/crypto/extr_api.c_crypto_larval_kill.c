
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_larval {int completion; } ;
struct crypto_alg {int cra_list; } ;


 int complete_all (int *) ;
 int crypto_alg_put (struct crypto_alg*) ;
 int crypto_alg_sem ;
 int down_write (int *) ;
 int list_del (int *) ;
 int up_write (int *) ;

void crypto_larval_kill(struct crypto_alg *alg)
{
 struct crypto_larval *larval = (void *)alg;

 down_write(&crypto_alg_sem);
 list_del(&alg->cra_list);
 up_write(&crypto_alg_sem);
 complete_all(&larval->completion);
 crypto_alg_put(alg);
}
