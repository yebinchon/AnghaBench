
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seqiv_ctx {int lock; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 struct crypto_ablkcipher* __crypto_ablkcipher_cast (struct crypto_tfm*) ;
 struct seqiv_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int skcipher_geniv_init (struct crypto_tfm*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int seqiv_init(struct crypto_tfm *tfm)
{
 struct crypto_ablkcipher *geniv = __crypto_ablkcipher_cast(tfm);
 struct seqiv_ctx *ctx = crypto_ablkcipher_ctx(geniv);

 spin_lock_init(&ctx->lock);

 tfm->crt_ablkcipher.reqsize = sizeof(struct ablkcipher_request);

 return skcipher_geniv_init(tfm);
}
