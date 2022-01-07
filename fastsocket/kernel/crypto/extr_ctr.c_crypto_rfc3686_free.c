
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_skcipher_spawn {int dummy; } ;
struct crypto_instance {int dummy; } ;


 int crypto_drop_skcipher (struct crypto_skcipher_spawn*) ;
 struct crypto_skcipher_spawn* crypto_instance_ctx (struct crypto_instance*) ;
 int kfree (struct crypto_instance*) ;

__attribute__((used)) static void crypto_rfc3686_free(struct crypto_instance *inst)
{
 struct crypto_skcipher_spawn *spawn = crypto_instance_ctx(inst);

 crypto_drop_skcipher(spawn);
 kfree(inst);
}
