
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seqiv_ctx {int lock; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_aead; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;


 struct crypto_aead* __crypto_aead_cast (struct crypto_tfm*) ;
 int aead_geniv_init (struct crypto_tfm*) ;
 struct seqiv_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int seqiv_aead_init(struct crypto_tfm *tfm)
{
 struct crypto_aead *geniv = __crypto_aead_cast(tfm);
 struct seqiv_ctx *ctx = crypto_aead_ctx(geniv);

 spin_lock_init(&ctx->lock);

 tfm->crt_aead.reqsize = sizeof(struct aead_request);

 return aead_geniv_init(tfm);
}
