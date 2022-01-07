
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence_chan {int (* sync ) (struct nouveau_fence*,struct nouveau_channel*,struct nouveau_channel*) ;} ;
struct nouveau_fence {struct nouveau_channel* channel; } ;
struct nouveau_channel {struct nouveau_fence_chan* fence; } ;


 int nouveau_fence_done (struct nouveau_fence*) ;
 int nouveau_fence_wait (struct nouveau_fence*,int,int) ;
 int stub1 (struct nouveau_fence*,struct nouveau_channel*,struct nouveau_channel*) ;
 scalar_t__ unlikely (int) ;

int
nouveau_fence_sync(struct nouveau_fence *fence, struct nouveau_channel *chan)
{
 struct nouveau_fence_chan *fctx = chan->fence;
 struct nouveau_channel *prev;
 int ret = 0;

 prev = fence ? fence->channel : ((void*)0);
 if (prev) {
  if (unlikely(prev != chan && !nouveau_fence_done(fence))) {
   ret = fctx->sync(fence, prev, chan);
   if (unlikely(ret))
    ret = nouveau_fence_wait(fence, 1, 0);
  }
 }

 return ret;
}
