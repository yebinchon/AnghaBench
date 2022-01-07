
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence_chan {int (* emit ) (struct nouveau_fence*) ;int lock; int pending; scalar_t__ sequence; } ;
struct nouveau_fence {int head; int kref; scalar_t__ sequence; scalar_t__ timeout; struct nouveau_channel* channel; } ;
struct nouveau_channel {struct nouveau_fence_chan* fence; } ;


 int DRM_HZ ;
 scalar_t__ jiffies ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nouveau_fence*) ;

int
nouveau_fence_emit(struct nouveau_fence *fence, struct nouveau_channel *chan)
{
 struct nouveau_fence_chan *fctx = chan->fence;
 int ret;

 fence->channel = chan;
 fence->timeout = jiffies + (3 * DRM_HZ);
 fence->sequence = ++fctx->sequence;

 ret = fctx->emit(fence);
 if (!ret) {
  kref_get(&fence->kref);
  spin_lock(&fctx->lock);
  list_add_tail(&fence->head, &fctx->pending);
  spin_unlock(&fctx->lock);
 }

 return ret;
}
