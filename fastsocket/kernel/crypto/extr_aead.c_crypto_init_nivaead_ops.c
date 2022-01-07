
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aead_tfm {int authsize; scalar_t__ ivsize; int base; int givdecrypt; int givencrypt; int decrypt; int encrypt; int setkey; } ;
struct crypto_tfm {struct aead_tfm crt_aead; TYPE_1__* __crt_alg; } ;
struct aead_alg {int maxauthsize; scalar_t__ ivsize; int decrypt; int encrypt; } ;
struct TYPE_2__ {struct aead_alg cra_aead; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int __crypto_aead_cast (struct crypto_tfm*) ;
 int aead_null_givdecrypt ;
 int aead_null_givencrypt ;
 int max (int ,scalar_t__) ;
 int setkey ;

__attribute__((used)) static int crypto_init_nivaead_ops(struct crypto_tfm *tfm, u32 type, u32 mask)
{
 struct aead_alg *alg = &tfm->__crt_alg->cra_aead;
 struct aead_tfm *crt = &tfm->crt_aead;

 if (max(alg->maxauthsize, alg->ivsize) > PAGE_SIZE / 8)
  return -EINVAL;

 crt->setkey = setkey;
 crt->encrypt = alg->encrypt;
 crt->decrypt = alg->decrypt;
 if (!alg->ivsize) {
  crt->givencrypt = aead_null_givencrypt;
  crt->givdecrypt = aead_null_givdecrypt;
 }
 crt->base = __crypto_aead_cast(tfm);
 crt->ivsize = alg->ivsize;
 crt->authsize = alg->maxauthsize;

 return 0;
}
