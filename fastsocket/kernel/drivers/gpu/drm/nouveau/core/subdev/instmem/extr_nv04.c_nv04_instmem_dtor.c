
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_instmem_priv {int base; scalar_t__ iomem; int heap; int vbios; int ramht; int ramro; int ramfc; } ;
struct nouveau_object {int dummy; } ;


 int iounmap (scalar_t__) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int nouveau_instmem_destroy (int *) ;
 int nouveau_mm_fini (int *) ;
 int nouveau_ramht_ref (int *,int *) ;

void
nv04_instmem_dtor(struct nouveau_object *object)
{
 struct nv04_instmem_priv *priv = (void *)object;
 nouveau_gpuobj_ref(((void*)0), &priv->ramfc);
 nouveau_gpuobj_ref(((void*)0), &priv->ramro);
 nouveau_ramht_ref(((void*)0), &priv->ramht);
 nouveau_gpuobj_ref(((void*)0), &priv->vbios);
 nouveau_mm_fini(&priv->heap);
 if (priv->iomem)
  iounmap(priv->iomem);
 nouveau_instmem_destroy(&priv->base);
}
