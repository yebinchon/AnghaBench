
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_hash {int dummy; } ;


 int CRYPTO_TFM_RES_MASK ;
 int ENOSYS ;
 int crypto_hash_clear_flags (struct crypto_hash*,int ) ;

__attribute__((used)) static int nosetkey(struct crypto_hash *tfm, const u8 *key, unsigned int keylen)
{
 crypto_hash_clear_flags(tfm, CRYPTO_TFM_RES_MASK);
 return -ENOSYS;
}
