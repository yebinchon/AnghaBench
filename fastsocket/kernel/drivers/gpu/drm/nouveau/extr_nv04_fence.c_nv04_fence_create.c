
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int context_del; int context_new; int dtor; } ;
struct nv04_fence_priv {TYPE_1__ base; } ;
struct nouveau_drm {struct nv04_fence_priv* fence; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv04_fence_priv* kzalloc (int,int ) ;
 int nv04_fence_context_del ;
 int nv04_fence_context_new ;
 int nv04_fence_destroy ;

int
nv04_fence_create(struct nouveau_drm *drm)
{
 struct nv04_fence_priv *priv;

 priv = drm->fence = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->base.dtor = nv04_fence_destroy;
 priv->base.context_new = nv04_fence_context_new;
 priv->base.context_del = nv04_fence_context_del;
 return 0;
}
