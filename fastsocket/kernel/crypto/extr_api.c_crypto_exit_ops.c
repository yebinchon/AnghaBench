
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_type {int dummy; } ;
struct crypto_tfm {int (* exit ) (struct crypto_tfm*) ;TYPE_1__* __crt_alg; } ;
struct TYPE_2__ {struct crypto_type* cra_type; } ;


 int BUG () ;


 int crypto_exit_cipher_ops (struct crypto_tfm*) ;
 int crypto_exit_compress_ops (struct crypto_tfm*) ;
 int crypto_tfm_alg_type (struct crypto_tfm*) ;
 int stub1 (struct crypto_tfm*) ;

__attribute__((used)) static void crypto_exit_ops(struct crypto_tfm *tfm)
{
 const struct crypto_type *type = tfm->__crt_alg->cra_type;

 if (type) {
  if (tfm->exit)
   tfm->exit(tfm);
  return;
 }

 switch (crypto_tfm_alg_type(tfm)) {
 case 129:
  crypto_exit_cipher_ops(tfm);
  break;

 case 128:
  crypto_exit_compress_ops(tfm);
  break;

 default:
  BUG();

 }
}
