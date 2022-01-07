
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct crypto4xx_ctx {int sa_len; int * sa_out; int * sa_in; int sa_in_dma_addr; TYPE_2__* dev; int sa_out_dma_addr; } ;
struct TYPE_4__ {TYPE_1__* core_dev; } ;
struct TYPE_3__ {int device; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 void* dma_alloc_coherent (int ,int,int *,int ) ;
 int dma_free_coherent (int ,int,int *,int ) ;
 int memset (int *,int ,int) ;

int crypto4xx_alloc_sa(struct crypto4xx_ctx *ctx, u32 size)
{
 ctx->sa_in = dma_alloc_coherent(ctx->dev->core_dev->device, size * 4,
     &ctx->sa_in_dma_addr, GFP_ATOMIC);
 if (ctx->sa_in == ((void*)0))
  return -ENOMEM;

 ctx->sa_out = dma_alloc_coherent(ctx->dev->core_dev->device, size * 4,
      &ctx->sa_out_dma_addr, GFP_ATOMIC);
 if (ctx->sa_out == ((void*)0)) {
  dma_free_coherent(ctx->dev->core_dev->device,
      ctx->sa_len * 4,
      ctx->sa_in, ctx->sa_in_dma_addr);
  return -ENOMEM;
 }

 memset(ctx->sa_in, 0, size * 4);
 memset(ctx->sa_out, 0, size * 4);
 ctx->sa_len = size;

 return 0;
}
