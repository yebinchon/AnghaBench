
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int crypto_tfm_ctx (struct crypto_tfm*) ;
 int free_prng_context (int ) ;

__attribute__((used)) static void cprng_exit(struct crypto_tfm *tfm)
{
 free_prng_context(crypto_tfm_ctx(tfm));
}
