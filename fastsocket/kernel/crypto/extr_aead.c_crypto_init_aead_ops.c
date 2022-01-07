
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aead_tfm {int authsize; int ivsize; int base; void* givdecrypt; void* givencrypt; int decrypt; int encrypt; int setkey; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; struct aead_tfm crt_aead; } ;
struct aead_alg {int maxauthsize; int ivsize; scalar_t__ givdecrypt; scalar_t__ givencrypt; int decrypt; int encrypt; int setkey; } ;
struct TYPE_2__ {int cra_flags; struct aead_alg cra_aead; } ;


 int CRYPTO_ALG_GENIV ;
 int EINVAL ;
 int PAGE_SIZE ;
 int __crypto_aead_cast (struct crypto_tfm*) ;
 int max (int ,int ) ;
 void* no_givcrypt ;
 int setkey ;

__attribute__((used)) static int crypto_init_aead_ops(struct crypto_tfm *tfm, u32 type, u32 mask)
{
 struct aead_alg *alg = &tfm->__crt_alg->cra_aead;
 struct aead_tfm *crt = &tfm->crt_aead;

 if (max(alg->maxauthsize, alg->ivsize) > PAGE_SIZE / 8)
  return -EINVAL;

 crt->setkey = tfm->__crt_alg->cra_flags & CRYPTO_ALG_GENIV ?
        alg->setkey : setkey;
 crt->encrypt = alg->encrypt;
 crt->decrypt = alg->decrypt;
 crt->givencrypt = alg->givencrypt ?: no_givcrypt;
 crt->givdecrypt = alg->givdecrypt ?: no_givcrypt;
 crt->base = __crypto_aead_cast(tfm);
 crt->ivsize = alg->ivsize;
 crt->authsize = alg->maxauthsize;

 return 0;
}
