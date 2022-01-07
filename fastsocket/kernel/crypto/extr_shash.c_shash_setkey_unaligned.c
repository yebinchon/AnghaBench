
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_alg {int (* setkey ) (struct crypto_shash*,int *,unsigned int) ;} ;
struct crypto_shash {int dummy; } ;


 scalar_t__ ALIGN (unsigned long,unsigned long) ;
 int CRYPTO_MINALIGN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct shash_alg* crypto_shash_alg (struct crypto_shash*) ;
 unsigned long crypto_shash_alignmask (struct crypto_shash*) ;
 int * kmalloc (unsigned long,int ) ;
 int kzfree (int *) ;
 int memcpy (int *,int const*,unsigned int) ;
 int stub1 (struct crypto_shash*,int *,unsigned int) ;

__attribute__((used)) static int shash_setkey_unaligned(struct crypto_shash *tfm, const u8 *key,
      unsigned int keylen)
{
 struct shash_alg *shash = crypto_shash_alg(tfm);
 unsigned long alignmask = crypto_shash_alignmask(tfm);
 unsigned long absize;
 u8 *buffer, *alignbuffer;
 int err;

 absize = keylen + (alignmask & ~(CRYPTO_MINALIGN - 1));
 buffer = kmalloc(absize, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 alignbuffer = (u8 *)ALIGN((unsigned long)buffer, alignmask + 1);
 memcpy(alignbuffer, key, keylen);
 err = shash->setkey(tfm, alignbuffer, keylen);
 kzfree(buffer);
 return err;
}
