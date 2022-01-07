
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ahash {int dummy; } ;


 int CRYPTO_TFM_RES_MASK ;
 int ENOSYS ;
 int crypto_ahash_clear_flags (struct crypto_ahash*,int ) ;

__attribute__((used)) static int digest_async_nosetkey(struct crypto_ahash *tfm_async, const u8 *key,
   unsigned int keylen)
{
 crypto_ahash_clear_flags(tfm_async, CRYPTO_TFM_RES_MASK);
 return -ENOSYS;
}
