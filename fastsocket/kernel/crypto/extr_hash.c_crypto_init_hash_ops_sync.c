
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hash_tfm {int digestsize; int setkey; int digest; int final; int update; int init; } ;
struct hash_alg {int digestsize; int digest; int final; int update; int init; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; struct hash_tfm crt_hash; } ;
struct TYPE_2__ {struct hash_alg cra_hash; } ;


 int hash_setkey ;

__attribute__((used)) static int crypto_init_hash_ops_sync(struct crypto_tfm *tfm)
{
 struct hash_tfm *crt = &tfm->crt_hash;
 struct hash_alg *alg = &tfm->__crt_alg->cra_hash;

 crt->init = alg->init;
 crt->update = alg->update;
 crt->final = alg->final;
 crt->digest = alg->digest;
 crt->setkey = hash_setkey;
 crt->digestsize = alg->digestsize;

 return 0;
}
