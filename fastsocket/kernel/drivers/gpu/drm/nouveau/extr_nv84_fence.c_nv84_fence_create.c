
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uevent; int waiting; int context_del; int context_new; int resume; int suspend; int (* dtor ) (struct nouveau_drm*) ;} ;
struct nv84_fence_priv {int bo_gart; int bo; TYPE_1__ base; } ;
struct nouveau_fifo {int max; } ;
struct nouveau_drm {int dev; struct nv84_fence_priv* fence; int device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TTM_PL_FLAG_TT ;
 int TTM_PL_FLAG_VRAM ;
 int init_waitqueue_head (int *) ;
 struct nv84_fence_priv* kzalloc (int,int ) ;
 int nouveau_bo_map (int ) ;
 int nouveau_bo_new (int ,int,int ,int ,int ,int ,int *,int *) ;
 int nouveau_bo_pin (int ,int ) ;
 int nouveau_bo_ref (int *,int *) ;
 int nouveau_bo_unpin (int ) ;
 struct nouveau_fifo* nouveau_fifo (int ) ;
 int nv84_fence_context_del ;
 int nv84_fence_context_new ;
 int nv84_fence_destroy (struct nouveau_drm*) ;
 int nv84_fence_resume ;
 int nv84_fence_suspend ;

int
nv84_fence_create(struct nouveau_drm *drm)
{
 struct nouveau_fifo *pfifo = nouveau_fifo(drm->device);
 struct nv84_fence_priv *priv;
 int ret;

 priv = drm->fence = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->base.dtor = nv84_fence_destroy;
 priv->base.suspend = nv84_fence_suspend;
 priv->base.resume = nv84_fence_resume;
 priv->base.context_new = nv84_fence_context_new;
 priv->base.context_del = nv84_fence_context_del;

 init_waitqueue_head(&priv->base.waiting);
 priv->base.uevent = 1;

 ret = nouveau_bo_new(drm->dev, 16 * (pfifo->max + 1), 0,
        TTM_PL_FLAG_VRAM, 0, 0, ((void*)0), &priv->bo);
 if (ret == 0) {
  ret = nouveau_bo_pin(priv->bo, TTM_PL_FLAG_VRAM);
  if (ret == 0) {
   ret = nouveau_bo_map(priv->bo);
   if (ret)
    nouveau_bo_unpin(priv->bo);
  }
  if (ret)
   nouveau_bo_ref(((void*)0), &priv->bo);
 }

 if (ret == 0)
  ret = nouveau_bo_new(drm->dev, 16 * (pfifo->max + 1), 0,
         TTM_PL_FLAG_TT, 0, 0, ((void*)0),
         &priv->bo_gart);
 if (ret == 0) {
  ret = nouveau_bo_pin(priv->bo_gart, TTM_PL_FLAG_TT);
  if (ret == 0) {
   ret = nouveau_bo_map(priv->bo_gart);
   if (ret)
    nouveau_bo_unpin(priv->bo_gart);
  }
  if (ret)
   nouveau_bo_ref(((void*)0), &priv->bo_gart);
 }

 if (ret)
  nv84_fence_destroy(drm);
 return ret;
}
