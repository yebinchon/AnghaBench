
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct ablkcipher_request {int dummy; } ;


 int skcipher_geniv_init (struct crypto_tfm*) ;

__attribute__((used)) static int chainiv_init_common(struct crypto_tfm *tfm)
{
 tfm->crt_ablkcipher.reqsize = sizeof(struct ablkcipher_request);

 return skcipher_geniv_init(tfm);
}
