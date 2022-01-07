
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hash_alg {int (* setkey ) (struct crypto_hash*,int const*,unsigned int) ;} ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct crypto_hash {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_2__ {struct hash_alg cra_hash; } ;


 struct crypto_hash* __crypto_hash_cast (struct crypto_tfm*) ;
 struct crypto_tfm* crypto_ahash_tfm (struct crypto_ahash*) ;
 int stub1 (struct crypto_hash*,int const*,unsigned int) ;

__attribute__((used)) static int hash_async_setkey(struct crypto_ahash *tfm_async, const u8 *key,
   unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_ahash_tfm(tfm_async);
 struct crypto_hash *tfm_hash = __crypto_hash_cast(tfm);
 struct hash_alg *alg = &tfm->__crt_alg->cra_hash;

 return alg->setkey(tfm_hash, key, keylen);
}
