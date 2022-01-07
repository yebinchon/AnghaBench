
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sa_state_record {int dummy; } ;
struct crypto4xx_ctx {int state_record; int state_record_dma_addr; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* core_dev; } ;
struct TYPE_3__ {int device; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int memset (int ,int ,int) ;

u32 crypto4xx_alloc_state_record(struct crypto4xx_ctx *ctx)
{
 ctx->state_record = dma_alloc_coherent(ctx->dev->core_dev->device,
    sizeof(struct sa_state_record),
    &ctx->state_record_dma_addr, GFP_ATOMIC);
 if (!ctx->state_record_dma_addr)
  return -ENOMEM;
 memset(ctx->state_record, 0, sizeof(struct sa_state_record));

 return 0;
}
