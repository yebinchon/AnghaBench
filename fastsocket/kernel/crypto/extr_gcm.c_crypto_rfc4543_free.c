
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_instance {int dummy; } ;


 int crypto_drop_spawn (int ) ;
 int crypto_instance_ctx (struct crypto_instance*) ;
 int kfree (struct crypto_instance*) ;

__attribute__((used)) static void crypto_rfc4543_free(struct crypto_instance *inst)
{
 crypto_drop_spawn(crypto_instance_ctx(inst));
 kfree(inst);
}
