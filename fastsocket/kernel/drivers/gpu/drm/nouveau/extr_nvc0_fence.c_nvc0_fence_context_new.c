
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync32; int emit32; } ;
struct nv84_fence_chan {TYPE_1__ base; } ;
struct nouveau_channel {struct nv84_fence_chan* fence; } ;


 int nv84_fence_context_new (struct nouveau_channel*) ;
 int nvc0_fence_emit32 ;
 int nvc0_fence_sync32 ;

__attribute__((used)) static int
nvc0_fence_context_new(struct nouveau_channel *chan)
{
 int ret = nv84_fence_context_new(chan);
 if (ret == 0) {
  struct nv84_fence_chan *fctx = chan->fence;
  fctx->base.emit32 = nvc0_fence_emit32;
  fctx->base.sync32 = nvc0_fence_sync32;
 }
 return ret;
}
