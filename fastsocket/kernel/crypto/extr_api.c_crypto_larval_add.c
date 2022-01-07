
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_alg {int cra_list; int cra_refcnt; } ;
struct crypto_larval {struct crypto_alg alg; } ;


 struct crypto_alg* ERR_CAST (struct crypto_larval*) ;
 scalar_t__ IS_ERR (struct crypto_larval*) ;
 struct crypto_alg* __crypto_alg_lookup (char const*,int ,int ) ;
 int atomic_set (int *,int) ;
 int crypto_alg_list ;
 int crypto_alg_sem ;
 scalar_t__ crypto_is_larval (struct crypto_alg*) ;
 struct crypto_larval* crypto_larval_alloc (char const*,int ,int ) ;
 struct crypto_alg* crypto_larval_wait (struct crypto_alg*) ;
 int down_write (int *) ;
 int kfree (struct crypto_larval*) ;
 int list_add (int *,int *) ;
 int up_write (int *) ;

__attribute__((used)) static struct crypto_alg *crypto_larval_add(const char *name, u32 type,
         u32 mask)
{
 struct crypto_alg *alg;
 struct crypto_larval *larval;

 larval = crypto_larval_alloc(name, type, mask);
 if (IS_ERR(larval))
  return ERR_CAST(larval);

 atomic_set(&larval->alg.cra_refcnt, 2);

 down_write(&crypto_alg_sem);
 alg = __crypto_alg_lookup(name, type, mask);
 if (!alg) {
  alg = &larval->alg;
  list_add(&alg->cra_list, &crypto_alg_list);
 }
 up_write(&crypto_alg_sem);

 if (alg != &larval->alg) {
  kfree(larval);
  if (crypto_is_larval(alg))
   alg = crypto_larval_wait(alg);
 }

 return alg;
}
