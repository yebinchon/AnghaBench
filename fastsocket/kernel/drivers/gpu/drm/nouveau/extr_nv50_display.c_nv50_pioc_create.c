
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nv50_pioc {int base; } ;
struct nouveau_object {int dummy; } ;


 int nv50_chan_create (struct nouveau_object*,int ,int ,void*,int ,int *) ;

__attribute__((used)) static int
nv50_pioc_create(struct nouveau_object *core, u32 bclass, u8 head,
   void *data, u32 size, struct nv50_pioc *pioc)
{
 return nv50_chan_create(core, bclass, head, data, size, &pioc->base);
}
