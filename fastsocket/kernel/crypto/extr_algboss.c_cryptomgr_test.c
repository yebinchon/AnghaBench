
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_test_param {int type; int driver; int alg; } ;


 int CRYPTO_ALG_TESTED ;
 int alg_test (int ,int ,int,int) ;
 int crypto_alg_tested (int ,int) ;
 int kfree (struct crypto_test_param*) ;
 int module_put_and_exit (int ) ;

__attribute__((used)) static int cryptomgr_test(void *data)
{
 struct crypto_test_param *param = data;
 u32 type = param->type;
 int err = 0;

 if (type & CRYPTO_ALG_TESTED)
  goto skiptest;

 err = alg_test(param->driver, param->alg, type, CRYPTO_ALG_TESTED);

skiptest:
 crypto_alg_tested(param->driver, err);

 kfree(param);
 module_put_and_exit(0);
}
