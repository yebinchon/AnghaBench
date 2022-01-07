
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_alg {int (* setkey ) (struct crypto_ablkcipher*,int *,unsigned int) ;} ;


 scalar_t__ ALIGN (unsigned long,unsigned long) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 struct ablkcipher_alg* crypto_ablkcipher_alg (struct crypto_ablkcipher*) ;
 unsigned long crypto_ablkcipher_alignmask (struct crypto_ablkcipher*) ;
 int kfree (int *) ;
 int * kmalloc (unsigned long,int ) ;
 int memcpy (int *,int const*,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 int stub1 (struct crypto_ablkcipher*,int *,unsigned int) ;

__attribute__((used)) static int setkey_unaligned(struct crypto_ablkcipher *tfm, const u8 *key,
       unsigned int keylen)
{
 struct ablkcipher_alg *cipher = crypto_ablkcipher_alg(tfm);
 unsigned long alignmask = crypto_ablkcipher_alignmask(tfm);
 int ret;
 u8 *buffer, *alignbuffer;
 unsigned long absize;

 absize = keylen + alignmask;
 buffer = kmalloc(absize, GFP_ATOMIC);
 if (!buffer)
  return -ENOMEM;

 alignbuffer = (u8 *)ALIGN((unsigned long)buffer, alignmask + 1);
 memcpy(alignbuffer, key, keylen);
 ret = cipher->setkey(tfm, alignbuffer, keylen);
 memset(alignbuffer, 0, keylen);
 kfree(buffer);
 return ret;
}
