
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;


 int crypto_free_ablkcipher (int ) ;

void skcipher_geniv_exit(struct crypto_tfm *tfm)
{
 crypto_free_ablkcipher(tfm->crt_ablkcipher.base);
}
