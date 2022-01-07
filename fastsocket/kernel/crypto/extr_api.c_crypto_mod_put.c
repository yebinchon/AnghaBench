
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct crypto_alg {struct module* cra_module; } ;


 int crypto_alg_put (struct crypto_alg*) ;
 int module_put (struct module*) ;

void crypto_mod_put(struct crypto_alg *alg)
{
 struct module *module = alg->cra_module;

 crypto_alg_put(alg);
 module_put(module);
}
