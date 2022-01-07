
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cra_flags; } ;
struct crypto_instance {TYPE_1__ alg; } ;


 int CRYPTO_ALG_TYPE_AEAD ;
 int CRYPTO_ALG_TYPE_MASK ;
 int aead_geniv_free (struct crypto_instance*) ;
 int crypto_put_default_rng () ;
 int skcipher_geniv_free (struct crypto_instance*) ;

__attribute__((used)) static void seqiv_free(struct crypto_instance *inst)
{
 if ((inst->alg.cra_flags ^ CRYPTO_ALG_TYPE_AEAD) & CRYPTO_ALG_TYPE_MASK)
  skcipher_geniv_free(inst);
 else
  aead_geniv_free(inst);
 crypto_put_default_rng();
}
