
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reqsize; struct crypto_ablkcipher* base; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; scalar_t__ __crt_alg; } ;
struct crypto_instance {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_ablkcipher*) ;
 int PTR_ERR (struct crypto_ablkcipher*) ;
 scalar_t__ crypto_ablkcipher_reqsize (struct crypto_ablkcipher*) ;
 int crypto_instance_ctx (struct crypto_instance*) ;
 struct crypto_ablkcipher* crypto_spawn_skcipher (int ) ;

int skcipher_geniv_init(struct crypto_tfm *tfm)
{
 struct crypto_instance *inst = (void *)tfm->__crt_alg;
 struct crypto_ablkcipher *cipher;

 cipher = crypto_spawn_skcipher(crypto_instance_ctx(inst));
 if (IS_ERR(cipher))
  return PTR_ERR(cipher);

 tfm->crt_ablkcipher.base = cipher;
 tfm->crt_ablkcipher.reqsize += crypto_ablkcipher_reqsize(cipher);

 return 0;
}
