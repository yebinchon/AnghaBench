
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_instance {int dummy; } ;


 int crypto_put_default_rng () ;
 int skcipher_geniv_free (struct crypto_instance*) ;

__attribute__((used)) static void eseqiv_free(struct crypto_instance *inst)
{
 skcipher_geniv_free(inst);
 crypto_put_default_rng();
}
