
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_disp_pioc {int base; } ;
struct nouveau_object {int dummy; } ;


 int nv50_disp_chan_destroy (int *) ;

__attribute__((used)) static void
nvd0_disp_pioc_dtor(struct nouveau_object *object)
{
 struct nv50_disp_pioc *pioc = (void *)object;
 nv50_disp_chan_destroy(&pioc->base);
}
