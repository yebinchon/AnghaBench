
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_pioc {int base; } ;
struct nouveau_object {int dummy; } ;


 int nv50_chan_destroy (struct nouveau_object*,int *) ;

__attribute__((used)) static void
nv50_pioc_destroy(struct nouveau_object *core, struct nv50_pioc *pioc)
{
 nv50_chan_destroy(core, &pioc->base);
}
