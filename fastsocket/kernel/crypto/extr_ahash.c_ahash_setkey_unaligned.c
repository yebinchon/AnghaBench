
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ahash {int (* setkey ) (struct crypto_ahash*,int *,unsigned int) ;} ;


 scalar_t__ ALIGN (unsigned long,unsigned long) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long crypto_ahash_alignmask (struct crypto_ahash*) ;
 int * kmalloc (unsigned long,int ) ;
 int kzfree (int *) ;
 int memcpy (int *,int const*,unsigned int) ;
 int stub1 (struct crypto_ahash*,int *,unsigned int) ;

__attribute__((used)) static int ahash_setkey_unaligned(struct crypto_ahash *tfm, const u8 *key,
    unsigned int keylen)
{
 unsigned long alignmask = crypto_ahash_alignmask(tfm);
 int ret;
 u8 *buffer, *alignbuffer;
 unsigned long absize;

 absize = keylen + alignmask;
 buffer = kmalloc(absize, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 alignbuffer = (u8 *)ALIGN((unsigned long)buffer, alignmask + 1);
 memcpy(alignbuffer, key, keylen);
 ret = tfm->setkey(tfm, alignbuffer, keylen);
 kzfree(buffer);
 return ret;
}
