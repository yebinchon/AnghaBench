
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv84_fence_priv {scalar_t__ bo; scalar_t__ bo_gart; } ;
struct nouveau_drm {struct nv84_fence_priv* fence; } ;


 int kfree (struct nv84_fence_priv*) ;
 int nouveau_bo_ref (int *,scalar_t__*) ;
 int nouveau_bo_unmap (scalar_t__) ;
 int nouveau_bo_unpin (scalar_t__) ;

__attribute__((used)) static void
nv84_fence_destroy(struct nouveau_drm *drm)
{
 struct nv84_fence_priv *priv = drm->fence;
 nouveau_bo_unmap(priv->bo_gart);
 if (priv->bo_gart)
  nouveau_bo_unpin(priv->bo_gart);
 nouveau_bo_ref(((void*)0), &priv->bo_gart);
 nouveau_bo_unmap(priv->bo);
 if (priv->bo)
  nouveau_bo_unpin(priv->bo);
 nouveau_bo_ref(((void*)0), &priv->bo);
 drm->fence = ((void*)0);
 kfree(priv);
}
