
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hash_alg {int digestsize; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct TYPE_2__ {struct hash_alg cra_hash; } ;


 int CRYPTO_ALG_TYPE_HASH_MASK ;
 int EINVAL ;
 int PAGE_SIZE ;
 int crypto_init_hash_ops_async (struct crypto_tfm*) ;
 int crypto_init_hash_ops_sync (struct crypto_tfm*) ;

__attribute__((used)) static int crypto_init_hash_ops(struct crypto_tfm *tfm, u32 type, u32 mask)
{
 struct hash_alg *alg = &tfm->__crt_alg->cra_hash;

 if (alg->digestsize > PAGE_SIZE / 8)
  return -EINVAL;

 if ((mask & CRYPTO_ALG_TYPE_HASH_MASK) != CRYPTO_ALG_TYPE_HASH_MASK)
  return crypto_init_hash_ops_async(tfm);
 else
  return crypto_init_hash_ops_sync(tfm);
}
