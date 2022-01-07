
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct talitos_edesc {int dummy; } ;
struct talitos_ctx {int dev; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ablkcipher_request {TYPE_1__ base; int nbytes; int dst; int src; } ;


 struct talitos_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 struct talitos_edesc* talitos_edesc_alloc (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static struct talitos_edesc *ablkcipher_edesc_alloc(struct ablkcipher_request *
          areq)
{
 struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
 struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);

 return talitos_edesc_alloc(ctx->dev, areq->src, areq->dst, areq->nbytes,
       0, 0, areq->base.flags);
}
