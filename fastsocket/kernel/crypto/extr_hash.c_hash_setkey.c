
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hash_alg {int (* setkey ) (struct crypto_hash*,int const*,unsigned int) ;} ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct crypto_hash {int dummy; } ;
struct TYPE_2__ {struct hash_alg cra_hash; } ;


 unsigned long crypto_hash_alignmask (struct crypto_hash*) ;
 struct crypto_tfm* crypto_hash_tfm (struct crypto_hash*) ;
 int hash_setkey_unaligned (struct crypto_hash*,int const*,unsigned int) ;
 int stub1 (struct crypto_hash*,int const*,unsigned int) ;

__attribute__((used)) static int hash_setkey(struct crypto_hash *crt, const u8 *key,
         unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_hash_tfm(crt);
 struct hash_alg *alg = &tfm->__crt_alg->cra_hash;
 unsigned long alignmask = crypto_hash_alignmask(crt);

 if ((unsigned long)key & alignmask)
  return hash_setkey_unaligned(crt, key, keylen);

 return alg->setkey(crt, key, keylen);
}
