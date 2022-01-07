
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct crypto_hash {int dummy; } ;


 struct shash_desc** crypto_hash_ctx (struct crypto_hash*) ;
 int crypto_shash_setkey (int ,int const*,unsigned int) ;

__attribute__((used)) static int shash_compat_setkey(struct crypto_hash *tfm, const u8 *key,
          unsigned int keylen)
{
 struct shash_desc **descp = crypto_hash_ctx(tfm);
 struct shash_desc *desc = *descp;

 return crypto_shash_setkey(desc->tfm, key, keylen);
}
