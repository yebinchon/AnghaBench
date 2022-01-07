
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int context_new; } ;
struct nv84_fence_priv {TYPE_1__ base; } ;
struct nouveau_drm {struct nv84_fence_priv* fence; } ;


 int nv84_fence_create (struct nouveau_drm*) ;
 int nvc0_fence_context_new ;

int
nvc0_fence_create(struct nouveau_drm *drm)
{
 int ret = nv84_fence_create(drm);
 if (ret == 0) {
  struct nv84_fence_priv *priv = drm->fence;
  priv->base.context_new = nvc0_fence_context_new;
 }
 return ret;
}
