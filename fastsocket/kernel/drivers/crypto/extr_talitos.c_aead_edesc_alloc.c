
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct talitos_edesc {int dummy; } ;
struct talitos_ctx {int authsize; int dev; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct aead_request {TYPE_1__ base; int cryptlen; int dst; int src; } ;


 struct talitos_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 struct talitos_edesc* talitos_edesc_alloc (int ,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static struct talitos_edesc *aead_edesc_alloc(struct aead_request *areq,
           int icv_stashing)
{
 struct crypto_aead *authenc = crypto_aead_reqtfm(areq);
 struct talitos_ctx *ctx = crypto_aead_ctx(authenc);

 return talitos_edesc_alloc(ctx->dev, areq->src, areq->dst,
       areq->cryptlen, ctx->authsize, icv_stashing,
       areq->base.flags);
}
