
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_disp_dmac {int base; int pushdma; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_object_ref (int *,struct nouveau_object**) ;
 int nv50_disp_chan_destroy (int *) ;

void
nv50_disp_dmac_dtor(struct nouveau_object *object)
{
 struct nv50_disp_dmac *dmac = (void *)object;
 nouveau_object_ref(((void*)0), (struct nouveau_object **)&dmac->pushdma);
 nv50_disp_chan_destroy(&dmac->base);
}
