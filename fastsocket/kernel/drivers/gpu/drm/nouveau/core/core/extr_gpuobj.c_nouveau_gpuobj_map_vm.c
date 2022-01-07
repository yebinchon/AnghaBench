
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_vma {int dummy; } ;
struct nouveau_vm {int dummy; } ;
struct nouveau_mem {int dummy; } ;
struct nouveau_instobj {int dummy; } ;
struct nouveau_gpuobj {int size; } ;


 int NV_MEMOBJ_CLASS ;
 int nouveau_vm_get (struct nouveau_vm*,int ,int,int ,struct nouveau_vma*) ;
 int nouveau_vm_map (struct nouveau_vma*,struct nouveau_mem*) ;
 int nv_object (struct nouveau_gpuobj*) ;
 scalar_t__ nv_pclass (int ,int ) ;

int
nouveau_gpuobj_map_vm(struct nouveau_gpuobj *gpuobj, struct nouveau_vm *vm,
        u32 access, struct nouveau_vma *vma)
{
 struct nouveau_instobj *iobj = (void *)
  nv_pclass(nv_object(gpuobj), NV_MEMOBJ_CLASS);
 struct nouveau_mem **mem = (void *)(iobj + 1);
 int ret;

 ret = nouveau_vm_get(vm, gpuobj->size, 12, access, vma);
 if (ret)
  return ret;

 nouveau_vm_map(vma, *mem);
 return 0;
}
