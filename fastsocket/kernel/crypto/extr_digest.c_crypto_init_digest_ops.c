
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hash_tfm {int digestsize; int setkey; int digest; int final; int update; int init; } ;
struct digest_alg {int dia_digestsize; scalar_t__ dia_setkey; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; struct hash_tfm crt_hash; } ;
struct TYPE_2__ {struct digest_alg cra_digest; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int digest ;
 int final ;
 int init ;
 int nosetkey ;
 int setkey ;
 int update ;

int crypto_init_digest_ops(struct crypto_tfm *tfm)
{
 struct hash_tfm *ops = &tfm->crt_hash;
 struct digest_alg *dalg = &tfm->__crt_alg->cra_digest;

 if (dalg->dia_digestsize > PAGE_SIZE / 8)
  return -EINVAL;

 ops->init = init;
 ops->update = update;
 ops->final = final;
 ops->digest = digest;
 ops->setkey = dalg->dia_setkey ? setkey : nosetkey;
 ops->digestsize = dalg->dia_digestsize;

 return 0;
}
