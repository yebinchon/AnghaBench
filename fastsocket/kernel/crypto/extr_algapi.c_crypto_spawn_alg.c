
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_spawn {struct crypto_alg* alg; } ;
struct crypto_alg {int dummy; } ;


 int EAGAIN ;
 struct crypto_alg* ERR_PTR (int ) ;
 int crypto_alg_sem ;
 struct crypto_alg* crypto_mod_get (struct crypto_alg*) ;
 int crypto_shoot_alg (struct crypto_alg*) ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static struct crypto_alg *crypto_spawn_alg(struct crypto_spawn *spawn)
{
 struct crypto_alg *alg;
 struct crypto_alg *alg2;

 down_read(&crypto_alg_sem);
 alg = spawn->alg;
 alg2 = alg;
 if (alg2)
  alg2 = crypto_mod_get(alg2);
 up_read(&crypto_alg_sem);

 if (!alg2) {
  if (alg)
   crypto_shoot_alg(alg);
  return ERR_PTR(-EAGAIN);
 }

 return alg;
}
