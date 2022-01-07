
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct blkcipher_alg {int (* setkey ) (struct crypto_tfm*,int *,unsigned int) ;} ;
struct TYPE_2__ {struct blkcipher_alg cra_blkcipher; } ;


 scalar_t__ ALIGN (unsigned long,unsigned long) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned long crypto_tfm_alg_alignmask (struct crypto_tfm*) ;
 int kfree (int *) ;
 int * kmalloc (unsigned long,int ) ;
 int memcpy (int *,int const*,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 int stub1 (struct crypto_tfm*,int *,unsigned int) ;

__attribute__((used)) static int setkey_unaligned(struct crypto_tfm *tfm, const u8 *key,
       unsigned int keylen)
{
 struct blkcipher_alg *cipher = &tfm->__crt_alg->cra_blkcipher;
 unsigned long alignmask = crypto_tfm_alg_alignmask(tfm);
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
