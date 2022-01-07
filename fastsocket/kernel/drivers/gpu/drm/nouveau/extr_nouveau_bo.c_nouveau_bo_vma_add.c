
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_vma {int refcount; int head; } ;
struct nouveau_vm {int dummy; } ;
struct nouveau_mem {scalar_t__ sg; } ;
struct TYPE_3__ {int num_pages; scalar_t__ mem_type; struct nouveau_mem* mm_node; } ;
struct TYPE_4__ {TYPE_1__ mem; } ;
struct nouveau_bo {int vma_list; TYPE_2__ bo; int page_shift; } ;


 int NV_MEM_ACCESS_RW ;
 int PAGE_SHIFT ;
 scalar_t__ TTM_PL_TT ;
 scalar_t__ TTM_PL_VRAM ;
 int list_add_tail (int *,int *) ;
 int nouveau_vm_get (struct nouveau_vm*,int const,int ,int ,struct nouveau_vma*) ;
 int nouveau_vm_map (struct nouveau_vma*,struct nouveau_mem*) ;
 int nouveau_vm_map_sg (struct nouveau_vma*,int ,int const,struct nouveau_mem*) ;
 int nouveau_vm_map_sg_table (struct nouveau_vma*,int ,int const,struct nouveau_mem*) ;

int
nouveau_bo_vma_add(struct nouveau_bo *nvbo, struct nouveau_vm *vm,
     struct nouveau_vma *vma)
{
 const u32 size = nvbo->bo.mem.num_pages << PAGE_SHIFT;
 struct nouveau_mem *node = nvbo->bo.mem.mm_node;
 int ret;

 ret = nouveau_vm_get(vm, size, nvbo->page_shift,
        NV_MEM_ACCESS_RW, vma);
 if (ret)
  return ret;

 if (nvbo->bo.mem.mem_type == TTM_PL_VRAM)
  nouveau_vm_map(vma, nvbo->bo.mem.mm_node);
 else if (nvbo->bo.mem.mem_type == TTM_PL_TT) {
  if (node->sg)
   nouveau_vm_map_sg_table(vma, 0, size, node);
  else
   nouveau_vm_map_sg(vma, 0, size, node);
 }

 list_add_tail(&vma->head, &nvbo->vma_list);
 vma->refcount = 1;
 return 0;
}
