
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_aead; scalar_t__ __crt_alg; } ;
struct crypto_rfc4309_ctx {struct crypto_aead* child; } ;
struct crypto_instance {int dummy; } ;
struct crypto_aead_spawn {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;


 scalar_t__ ALIGN (int ,int) ;
 scalar_t__ IS_ERR (struct crypto_aead*) ;
 int PTR_ERR (struct crypto_aead*) ;
 unsigned long crypto_aead_alignmask (struct crypto_aead*) ;
 int crypto_aead_reqsize (struct crypto_aead*) ;
 struct crypto_aead_spawn* crypto_instance_ctx (struct crypto_instance*) ;
 struct crypto_aead* crypto_spawn_aead (struct crypto_aead_spawn*) ;
 struct crypto_rfc4309_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int crypto_tfm_ctx_alignment () ;

__attribute__((used)) static int crypto_rfc4309_init_tfm(struct crypto_tfm *tfm)
{
 struct crypto_instance *inst = (void *)tfm->__crt_alg;
 struct crypto_aead_spawn *spawn = crypto_instance_ctx(inst);
 struct crypto_rfc4309_ctx *ctx = crypto_tfm_ctx(tfm);
 struct crypto_aead *aead;
 unsigned long align;

 aead = crypto_spawn_aead(spawn);
 if (IS_ERR(aead))
  return PTR_ERR(aead);

 ctx->child = aead;

 align = crypto_aead_alignmask(aead);
 align &= ~(crypto_tfm_ctx_alignment() - 1);
 tfm->crt_aead.reqsize = sizeof(struct aead_request) +
    ALIGN(crypto_aead_reqsize(aead),
          crypto_tfm_ctx_alignment()) +
    align + 16;

 return 0;
}
