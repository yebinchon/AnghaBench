
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int (* sync32 ) (struct nouveau_channel*,int,int ) ;} ;
struct TYPE_4__ {scalar_t__ offset; } ;
struct TYPE_6__ {scalar_t__ offset; } ;
struct nv84_fence_chan {TYPE_2__ base; TYPE_1__ vma; TYPE_3__ vma_gart; } ;
struct nouveau_fifo_chan {int chid; } ;
struct nouveau_fence {int sequence; scalar_t__ sysmem; } ;
struct nouveau_channel {scalar_t__ object; struct nv84_fence_chan* fence; } ;


 int stub1 (struct nouveau_channel*,int,int ) ;

__attribute__((used)) static int
nv84_fence_sync(struct nouveau_fence *fence,
  struct nouveau_channel *prev, struct nouveau_channel *chan)
{
 struct nv84_fence_chan *fctx = chan->fence;
 struct nouveau_fifo_chan *fifo = (void *)prev->object;
 u64 addr = fifo->chid * 16;

 if (fence->sysmem)
  addr += fctx->vma_gart.offset;
 else
  addr += fctx->vma.offset;

 return fctx->base.sync32(chan, addr, fence->sequence);
}
