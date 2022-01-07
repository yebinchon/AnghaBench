
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sa_state_record {int dummy; } ;
struct crypto4xx_ctx {scalar_t__ state_record_dma_addr; int * state_record; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* core_dev; } ;
struct TYPE_3__ {int device; } ;


 int dma_free_coherent (int ,int,int *,scalar_t__) ;

void crypto4xx_free_state_record(struct crypto4xx_ctx *ctx)
{
 if (ctx->state_record != ((void*)0))
  dma_free_coherent(ctx->dev->core_dev->device,
      sizeof(struct sa_state_record),
      ctx->state_record,
      ctx->state_record_dma_addr);
 ctx->state_record_dma_addr = 0;
}
