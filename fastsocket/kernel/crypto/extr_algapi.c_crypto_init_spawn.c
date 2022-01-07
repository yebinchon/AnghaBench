
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_spawn {struct crypto_alg* alg; int list; int mask; struct crypto_instance* inst; } ;
struct crypto_instance {int dummy; } ;
struct crypto_alg {int cra_users; } ;


 int EAGAIN ;
 int crypto_alg_sem ;
 int crypto_is_moribund (struct crypto_alg*) ;
 int down_write (int *) ;
 int list_add (int *,int *) ;
 int up_write (int *) ;

int crypto_init_spawn(struct crypto_spawn *spawn, struct crypto_alg *alg,
        struct crypto_instance *inst, u32 mask)
{
 int err = -EAGAIN;

 spawn->inst = inst;
 spawn->mask = mask;

 down_write(&crypto_alg_sem);
 if (!crypto_is_moribund(alg)) {
  list_add(&spawn->list, &alg->cra_users);
  spawn->alg = alg;
  err = 0;
 }
 up_write(&crypto_alg_sem);

 return err;
}
