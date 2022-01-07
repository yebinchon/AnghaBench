
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv84_fence_priv {int * suspend; int bo; } ;
struct nouveau_fifo {int max; } ;
struct nouveau_drm {struct nv84_fence_priv* fence; int device; } ;


 int nouveau_bo_rd32 (int ,int) ;
 struct nouveau_fifo* nouveau_fifo (int ) ;
 int * vmalloc (int) ;

__attribute__((used)) static bool
nv84_fence_suspend(struct nouveau_drm *drm)
{
 struct nouveau_fifo *pfifo = nouveau_fifo(drm->device);
 struct nv84_fence_priv *priv = drm->fence;
 int i;

 priv->suspend = vmalloc((pfifo->max + 1) * sizeof(u32));
 if (priv->suspend) {
  for (i = 0; i <= pfifo->max; i++)
   priv->suspend[i] = nouveau_bo_rd32(priv->bo, i*4);
 }

 return priv->suspend != ((void*)0);
}
