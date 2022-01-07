
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nouveau_object {int dummy; } ;
struct nouveau_instmem {int dummy; } ;


 int nouveau_object_ctor (struct nouveau_object*,struct nouveau_object*,int *,void*,scalar_t__,struct nouveau_object**) ;
 int nv50_instobj_oclass ;
 struct nouveau_object* nv_object (struct nouveau_instmem*) ;

__attribute__((used)) static int
nv50_instmem_alloc(struct nouveau_instmem *imem, struct nouveau_object *parent,
     u32 size, u32 align, struct nouveau_object **pobject)
{
 struct nouveau_object *engine = nv_object(imem);
 return nouveau_object_ctor(parent, engine, &nv50_instobj_oclass,
       (void *)(unsigned long)align, size, pobject);
}
