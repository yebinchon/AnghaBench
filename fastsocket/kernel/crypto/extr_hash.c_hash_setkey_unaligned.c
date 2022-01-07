
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hash_alg {int (* setkey ) (struct crypto_hash*,int *,unsigned int) ;} ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct crypto_hash {int dummy; } ;
struct TYPE_2__ {struct hash_alg cra_hash; } ;


 scalar_t__ ALIGN (unsigned long,unsigned long) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned long crypto_hash_alignmask (struct crypto_hash*) ;
 struct crypto_tfm* crypto_hash_tfm (struct crypto_hash*) ;
 int kfree (int *) ;
 int * kmalloc (unsigned long,int ) ;
 int memcpy (int *,int const*,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 int stub1 (struct crypto_hash*,int *,unsigned int) ;

__attribute__((used)) static int hash_setkey_unaligned(struct crypto_hash *crt, const u8 *key,
                   unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_hash_tfm(crt);
 struct hash_alg *alg = &tfm->__crt_alg->cra_hash;
 unsigned long alignmask = crypto_hash_alignmask(crt);
 int ret;
 u8 *buffer, *alignbuffer;
 unsigned long absize;

 absize = keylen + alignmask;
 buffer = kmalloc(absize, GFP_ATOMIC);
 if (!buffer)
  return -ENOMEM;

 alignbuffer = (u8 *)ALIGN((unsigned long)buffer, alignmask + 1);
 memcpy(alignbuffer, key, keylen);
 ret = alg->setkey(crt, alignbuffer, keylen);
 memset(alignbuffer, 0, keylen);
 kfree(buffer);
 return ret;
}
