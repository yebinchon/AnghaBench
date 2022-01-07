
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_larval {int dummy; } ;
struct crypto_alg {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_larval*) ;
 int PTR_ERR (struct crypto_larval*) ;
 struct crypto_larval* __crypto_register_alg (struct crypto_alg*) ;
 int crypto_alg_sem ;
 int crypto_check_alg (struct crypto_alg*) ;
 int crypto_wait_for_test (struct crypto_larval*) ;
 int down_write (int *) ;
 int up_write (int *) ;

int crypto_register_alg(struct crypto_alg *alg)
{
 struct crypto_larval *larval;
 int err;

 err = crypto_check_alg(alg);
 if (err)
  return err;

 down_write(&crypto_alg_sem);
 larval = __crypto_register_alg(alg);
 up_write(&crypto_alg_sem);

 if (IS_ERR(larval))
  return PTR_ERR(larval);

 crypto_wait_for_test(larval);
 return 0;
}
