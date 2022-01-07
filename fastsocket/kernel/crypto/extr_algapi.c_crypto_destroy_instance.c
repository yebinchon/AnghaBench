
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_template {int (* free ) (struct crypto_instance*) ;} ;
struct crypto_instance {struct crypto_template* tmpl; } ;
struct crypto_alg {int dummy; } ;


 int crypto_tmpl_put (struct crypto_template*) ;
 int stub1 (struct crypto_instance*) ;

__attribute__((used)) static void crypto_destroy_instance(struct crypto_alg *alg)
{
 struct crypto_instance *inst = (void *)alg;
 struct crypto_template *tmpl = inst->tmpl;

 tmpl->free(inst);
 crypto_tmpl_put(tmpl);
}
