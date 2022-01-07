
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto4xx_ctx {int sa_len; scalar_t__ sa_out_dma_addr; scalar_t__ sa_in_dma_addr; int * sa_out; TYPE_1__* dev; int * sa_in; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {TYPE_2__* core_dev; } ;


 int dma_free_coherent (int ,int,int *,scalar_t__) ;

void crypto4xx_free_sa(struct crypto4xx_ctx *ctx)
{
 if (ctx->sa_in != ((void*)0))
  dma_free_coherent(ctx->dev->core_dev->device, ctx->sa_len * 4,
      ctx->sa_in, ctx->sa_in_dma_addr);
 if (ctx->sa_out != ((void*)0))
  dma_free_coherent(ctx->dev->core_dev->device, ctx->sa_len * 4,
      ctx->sa_out, ctx->sa_out_dma_addr);

 ctx->sa_in_dma_addr = 0;
 ctx->sa_out_dma_addr = 0;
 ctx->sa_len = 0;
}
