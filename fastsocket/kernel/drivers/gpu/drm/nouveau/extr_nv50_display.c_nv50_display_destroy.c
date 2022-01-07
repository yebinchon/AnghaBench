
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
struct nv50_disp {scalar_t__ sync; TYPE_1__ mast; int core; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int * priv; } ;


 int kfree (struct nv50_disp*) ;
 int nouveau_bo_ref (int *,scalar_t__*) ;
 int nouveau_bo_unmap (scalar_t__) ;
 int nouveau_bo_unpin (scalar_t__) ;
 TYPE_2__* nouveau_display (struct drm_device*) ;
 struct nv50_disp* nv50_disp (struct drm_device*) ;
 int nv50_dmac_destroy (int ,int *) ;

void
nv50_display_destroy(struct drm_device *dev)
{
 struct nv50_disp *disp = nv50_disp(dev);

 nv50_dmac_destroy(disp->core, &disp->mast.base);

 nouveau_bo_unmap(disp->sync);
 if (disp->sync)
  nouveau_bo_unpin(disp->sync);
 nouveau_bo_ref(((void*)0), &disp->sync);

 nouveau_display(dev)->priv = ((void*)0);
 kfree(disp);
}
