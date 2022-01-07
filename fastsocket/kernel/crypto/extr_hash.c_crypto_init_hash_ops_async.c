
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hash_alg {int digestsize; } ;
struct ahash_tfm {int digestsize; int setkey; int digest; int final; int update; int init; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; struct ahash_tfm crt_ahash; } ;
struct TYPE_2__ {struct hash_alg cra_hash; } ;


 int hash_async_digest ;
 int hash_async_final ;
 int hash_async_init ;
 int hash_async_setkey ;
 int hash_async_update ;

__attribute__((used)) static int crypto_init_hash_ops_async(struct crypto_tfm *tfm)
{
 struct ahash_tfm *crt = &tfm->crt_ahash;
 struct hash_alg *alg = &tfm->__crt_alg->cra_hash;

 crt->init = hash_async_init;
 crt->update = hash_async_update;
 crt->final = hash_async_final;
 crt->digest = hash_async_digest;
 crt->setkey = hash_async_setkey;
 crt->digestsize = alg->digestsize;

 return 0;
}
