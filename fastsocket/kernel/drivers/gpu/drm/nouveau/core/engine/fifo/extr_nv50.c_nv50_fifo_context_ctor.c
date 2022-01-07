
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv50_fifo_base {int pgd; int vm; int eng; int ramfc; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int vm; } ;


 int NVOBJ_FLAG_HEAP ;
 int NVOBJ_FLAG_ZERO_ALLOC ;
 TYPE_1__* nouveau_client (struct nouveau_object*) ;
 int nouveau_fifo_context_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int *,int,int,int ,struct nv50_fifo_base**) ;
 int nouveau_gpuobj_new (struct nouveau_object*,struct nouveau_object*,int,int,int ,int *) ;
 int nouveau_vm_ref (int ,int *,int ) ;
 struct nouveau_object* nv_object (struct nv50_fifo_base*) ;

__attribute__((used)) static int
nv50_fifo_context_ctor(struct nouveau_object *parent,
         struct nouveau_object *engine,
         struct nouveau_oclass *oclass, void *data, u32 size,
         struct nouveau_object **pobject)
{
 struct nv50_fifo_base *base;
 int ret;

 ret = nouveau_fifo_context_create(parent, engine, oclass, ((void*)0), 0x10000,
              0x1000, NVOBJ_FLAG_HEAP, &base);
 *pobject = nv_object(base);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, nv_object(base), 0x0200, 0x1000,
     NVOBJ_FLAG_ZERO_ALLOC, &base->ramfc);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, nv_object(base), 0x1200, 0,
     NVOBJ_FLAG_ZERO_ALLOC, &base->eng);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, nv_object(base), 0x4000, 0, 0,
    &base->pgd);
 if (ret)
  return ret;

 ret = nouveau_vm_ref(nouveau_client(parent)->vm, &base->vm, base->pgd);
 if (ret)
  return ret;

 return 0;
}
