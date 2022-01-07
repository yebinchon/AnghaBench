
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ablkcipher_tfm {int ivsize; int base; int givdecrypt; int givencrypt; int decrypt; int encrypt; int setkey; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; struct ablkcipher_tfm crt_ablkcipher; } ;
struct ablkcipher_alg {int ivsize; scalar_t__ givdecrypt; int givencrypt; int decrypt; int encrypt; int setkey; } ;
struct TYPE_2__ {int cra_flags; struct ablkcipher_alg cra_ablkcipher; } ;


 int CRYPTO_ALG_GENIV ;
 int EINVAL ;
 int PAGE_SIZE ;
 int __crypto_ablkcipher_cast (struct crypto_tfm*) ;
 int no_givdecrypt ;
 int setkey ;

__attribute__((used)) static int crypto_init_givcipher_ops(struct crypto_tfm *tfm, u32 type,
          u32 mask)
{
 struct ablkcipher_alg *alg = &tfm->__crt_alg->cra_ablkcipher;
 struct ablkcipher_tfm *crt = &tfm->crt_ablkcipher;

 if (alg->ivsize > PAGE_SIZE / 8)
  return -EINVAL;

 crt->setkey = tfm->__crt_alg->cra_flags & CRYPTO_ALG_GENIV ?
        alg->setkey : setkey;
 crt->encrypt = alg->encrypt;
 crt->decrypt = alg->decrypt;
 crt->givencrypt = alg->givencrypt;
 crt->givdecrypt = alg->givdecrypt ?: no_givdecrypt;
 crt->base = __crypto_ablkcipher_cast(tfm);
 crt->ivsize = alg->ivsize;

 return 0;
}
