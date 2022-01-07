
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {struct nouveau_mem* mm_node; } ;
struct nouveau_mem {TYPE_1__* vma; } ;
struct TYPE_2__ {scalar_t__ node; } ;


 int kfree (struct nouveau_mem*) ;
 int nouveau_vm_put (TYPE_1__*) ;

__attribute__((used)) static void
nv04_gart_manager_del(struct ttm_mem_type_manager *man, struct ttm_mem_reg *mem)
{
 struct nouveau_mem *node = mem->mm_node;
 if (node->vma[0].node)
  nouveau_vm_put(&node->vma[0]);
 kfree(mem->mm_node);
 mem->mm_node = ((void*)0);
}
