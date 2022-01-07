
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_fence_priv {int dummy; } ;
struct nouveau_drm {struct nv04_fence_priv* fence; } ;


 int kfree (struct nv04_fence_priv*) ;

__attribute__((used)) static void
nv04_fence_destroy(struct nouveau_drm *drm)
{
 struct nv04_fence_priv *priv = drm->fence;
 drm->fence = ((void*)0);
 kfree(priv);
}
