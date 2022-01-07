
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; struct crypto_alg* __crt_alg; } ;
struct crypto_alg {int cra_flags; } ;
struct crypto4xx_ctx {scalar_t__ sa_len; scalar_t__ sa_out_dma_addr; scalar_t__ sa_in_dma_addr; int * sa_out; int * sa_in; int dev; } ;
struct crypto4xx_alg {int dev; } ;



 int CRYPTO_ALG_TYPE_MASK ;
 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int crypto_ahash_set_reqsize (int ,int) ;
 struct crypto4xx_alg* crypto_alg_to_crypto4xx_alg (struct crypto_alg*) ;
 struct crypto4xx_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int crypto4xx_alg_init(struct crypto_tfm *tfm)
{
 struct crypto_alg *alg = tfm->__crt_alg;
 struct crypto4xx_alg *amcc_alg = crypto_alg_to_crypto4xx_alg(alg);
 struct crypto4xx_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->dev = amcc_alg->dev;
 ctx->sa_in = ((void*)0);
 ctx->sa_out = ((void*)0);
 ctx->sa_in_dma_addr = 0;
 ctx->sa_out_dma_addr = 0;
 ctx->sa_len = 0;

 switch (alg->cra_flags & CRYPTO_ALG_TYPE_MASK) {
 default:
  tfm->crt_ablkcipher.reqsize = sizeof(struct crypto4xx_ctx);
  break;
 case 128:
  crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
      sizeof(struct crypto4xx_ctx));
  break;
 }

 return 0;
}
