
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct aead_alg {int (* setkey ) (struct crypto_aead*,int const*,unsigned int) ;} ;


 struct aead_alg* crypto_aead_alg (struct crypto_aead*) ;
 unsigned long crypto_aead_alignmask (struct crypto_aead*) ;
 int setkey_unaligned (struct crypto_aead*,int const*,unsigned int) ;
 int stub1 (struct crypto_aead*,int const*,unsigned int) ;

__attribute__((used)) static int setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
{
 struct aead_alg *aead = crypto_aead_alg(tfm);
 unsigned long alignmask = crypto_aead_alignmask(tfm);

 if ((unsigned long)key & alignmask)
  return setkey_unaligned(tfm, key, keylen);

 return aead->setkey(tfm, key, keylen);
}
