
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ahash {int (* setkey ) (struct crypto_ahash*,int const*,unsigned int) ;} ;


 int ahash_setkey_unaligned (struct crypto_ahash*,int const*,unsigned int) ;
 unsigned long crypto_ahash_alignmask (struct crypto_ahash*) ;
 int stub1 (struct crypto_ahash*,int const*,unsigned int) ;

int crypto_ahash_setkey(struct crypto_ahash *tfm, const u8 *key,
   unsigned int keylen)
{
 unsigned long alignmask = crypto_ahash_alignmask(tfm);

 if ((unsigned long)key & alignmask)
  return ahash_setkey_unaligned(tfm, key, keylen);

 return tfm->setkey(tfm, key, keylen);
}
