
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nv10_fence_priv {int sequence; int lock; } ;
struct nouveau_fence {int dummy; } ;
struct nouveau_channel {TYPE_2__* cli; TYPE_1__* drm; } ;
struct TYPE_4__ {int mutex; } ;
struct TYPE_3__ {struct nv10_fence_priv* fence; } ;


 int BEGIN_NV04 (struct nouveau_channel*,int ,int ,int) ;
 int EBUSY ;
 int FIRE_RING (struct nouveau_channel*) ;
 int NV11_SUBCHAN_DMA_SEMAPHORE ;
 int NvSema ;
 int OUT_RING (struct nouveau_channel*,int) ;
 int RING_SPACE (struct nouveau_channel*,int) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
nv17_fence_sync(struct nouveau_fence *fence,
  struct nouveau_channel *prev, struct nouveau_channel *chan)
{
 struct nv10_fence_priv *priv = chan->drm->fence;
 u32 value;
 int ret;

 if (!mutex_trylock(&prev->cli->mutex))
  return -EBUSY;

 spin_lock(&priv->lock);
 value = priv->sequence;
 priv->sequence += 2;
 spin_unlock(&priv->lock);

 ret = RING_SPACE(prev, 5);
 if (!ret) {
  BEGIN_NV04(prev, 0, NV11_SUBCHAN_DMA_SEMAPHORE, 4);
  OUT_RING (prev, NvSema);
  OUT_RING (prev, 0);
  OUT_RING (prev, value + 0);
  OUT_RING (prev, value + 1);
  FIRE_RING (prev);
 }

 if (!ret && !(ret = RING_SPACE(chan, 5))) {
  BEGIN_NV04(chan, 0, NV11_SUBCHAN_DMA_SEMAPHORE, 4);
  OUT_RING (chan, NvSema);
  OUT_RING (chan, 0);
  OUT_RING (chan, value + 1);
  OUT_RING (chan, value + 2);
  FIRE_RING (chan);
 }

 mutex_unlock(&prev->cli->mutex);
 return 0;
}
