
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;


 int crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 int setkey (int ,int const*,unsigned int) ;

__attribute__((used)) static int async_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
   unsigned int keylen)
{
 return setkey(crypto_ablkcipher_tfm(tfm), key, keylen);
}
