
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv84_fence_priv {int * suspend; int bo; } ;
struct nouveau_fifo {int max; } ;
struct nouveau_drm {struct nv84_fence_priv* fence; int device; } ;


 int nouveau_bo_wr32 (int ,int,int ) ;
 struct nouveau_fifo* nouveau_fifo (int ) ;
 int vfree (int *) ;

__attribute__((used)) static void
nv84_fence_resume(struct nouveau_drm *drm)
{
 struct nouveau_fifo *pfifo = nouveau_fifo(drm->device);
 struct nv84_fence_priv *priv = drm->fence;
 int i;

 if (priv->suspend) {
  for (i = 0; i <= pfifo->max; i++)
   nouveau_bo_wr32(priv->bo, i*4, priv->suspend[i]);
  vfree(priv->suspend);
  priv->suspend = ((void*)0);
 }
}
