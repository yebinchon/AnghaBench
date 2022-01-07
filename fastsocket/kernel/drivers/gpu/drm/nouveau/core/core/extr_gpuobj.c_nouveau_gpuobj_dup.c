
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int engine; } ;
struct nouveau_gpuobj {int size; int addr; int parent; } ;


 int nouveau_gpudup_oclass ;
 int nouveau_object_create (struct nouveau_object*,int ,int *,int ,struct nouveau_gpuobj**) ;
 int nouveau_object_ref (int ,int *) ;
 int nv_object (struct nouveau_gpuobj*) ;

int
nouveau_gpuobj_dup(struct nouveau_object *parent, struct nouveau_gpuobj *base,
     struct nouveau_gpuobj **pgpuobj)
{
 struct nouveau_gpuobj *gpuobj;
 int ret;

 ret = nouveau_object_create(parent, parent->engine,
       &nouveau_gpudup_oclass, 0, &gpuobj);
 *pgpuobj = gpuobj;
 if (ret)
  return ret;

 nouveau_object_ref(nv_object(base), &gpuobj->parent);
 gpuobj->addr = base->addr;
 gpuobj->size = base->size;
 return 0;
}
