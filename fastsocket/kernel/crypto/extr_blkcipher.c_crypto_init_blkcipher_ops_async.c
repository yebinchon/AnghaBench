
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ablkcipher_tfm {scalar_t__ ivsize; int base; int givdecrypt; int givencrypt; int decrypt; int encrypt; int setkey; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; struct ablkcipher_tfm crt_ablkcipher; } ;
struct blkcipher_alg {scalar_t__ ivsize; } ;
struct TYPE_2__ {struct blkcipher_alg cra_blkcipher; } ;


 int __crypto_ablkcipher_cast (struct crypto_tfm*) ;
 int async_decrypt ;
 int async_encrypt ;
 int async_setkey ;
 int skcipher_null_givdecrypt ;
 int skcipher_null_givencrypt ;

__attribute__((used)) static int crypto_init_blkcipher_ops_async(struct crypto_tfm *tfm)
{
 struct ablkcipher_tfm *crt = &tfm->crt_ablkcipher;
 struct blkcipher_alg *alg = &tfm->__crt_alg->cra_blkcipher;

 crt->setkey = async_setkey;
 crt->encrypt = async_encrypt;
 crt->decrypt = async_decrypt;
 if (!alg->ivsize) {
  crt->givencrypt = skcipher_null_givencrypt;
  crt->givdecrypt = skcipher_null_givdecrypt;
 }
 crt->base = __crypto_ablkcipher_cast(tfm);
 crt->ivsize = alg->ivsize;

 return 0;
}
