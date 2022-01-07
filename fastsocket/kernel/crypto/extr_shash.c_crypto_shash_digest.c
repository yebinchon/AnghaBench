
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct shash_alg {int (* digest ) (struct shash_desc*,int const*,unsigned int,int *) ;} ;
struct crypto_shash {int dummy; } ;


 struct shash_alg* crypto_shash_alg (struct crypto_shash*) ;
 unsigned long crypto_shash_alignmask (struct crypto_shash*) ;
 int shash_digest_unaligned (struct shash_desc*,int const*,unsigned int,int *) ;
 int stub1 (struct shash_desc*,int const*,unsigned int,int *) ;

int crypto_shash_digest(struct shash_desc *desc, const u8 *data,
   unsigned int len, u8 *out)
{
 struct crypto_shash *tfm = desc->tfm;
 struct shash_alg *shash = crypto_shash_alg(tfm);
 unsigned long alignmask = crypto_shash_alignmask(tfm);

 if (((unsigned long)data | (unsigned long)out) & alignmask)
  return shash_digest_unaligned(desc, data, len, out);

 return shash->digest(desc, data, len, out);
}
