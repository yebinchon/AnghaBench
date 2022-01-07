
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_shash {int dummy; } ;
struct crypto_ahash {int dummy; } ;


 struct crypto_shash** crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_shash_setkey (struct crypto_shash*,int const*,unsigned int) ;

__attribute__((used)) static int shash_async_setkey(struct crypto_ahash *tfm, const u8 *key,
         unsigned int keylen)
{
 struct crypto_shash **ctx = crypto_ahash_ctx(tfm);

 return crypto_shash_setkey(*ctx, key, keylen);
}
