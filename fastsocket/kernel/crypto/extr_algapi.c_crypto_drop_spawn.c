
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_spawn {int list; int alg; } ;


 int crypto_alg_sem ;
 int down_write (int *) ;
 int list_del (int *) ;
 int up_write (int *) ;

void crypto_drop_spawn(struct crypto_spawn *spawn)
{
 if (!spawn->alg)
  return;

 down_write(&crypto_alg_sem);
 list_del(&spawn->list);
 up_write(&crypto_alg_sem);
}
