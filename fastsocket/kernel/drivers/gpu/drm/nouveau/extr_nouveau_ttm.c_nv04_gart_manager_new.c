
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_placement {int dummy; } ;
struct ttm_mem_type_manager {int priv; } ;
struct ttm_mem_reg {int num_pages; int start; struct nouveau_mem* mm_node; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_mem {int page_shift; TYPE_1__* vma; } ;
struct TYPE_2__ {int offset; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NV_MEM_ACCESS_RW ;
 int PAGE_SHIFT ;
 int kfree (struct nouveau_mem*) ;
 struct nouveau_mem* kzalloc (int,int ) ;
 int nouveau_vm_get (int ,int,int,int ,TYPE_1__*) ;

__attribute__((used)) static int
nv04_gart_manager_new(struct ttm_mem_type_manager *man,
        struct ttm_buffer_object *bo,
        struct ttm_placement *placement,
        struct ttm_mem_reg *mem)
{
 struct nouveau_mem *node;
 int ret;

 node = kzalloc(sizeof(*node), GFP_KERNEL);
 if (!node)
  return -ENOMEM;

 node->page_shift = 12;

 ret = nouveau_vm_get(man->priv, mem->num_pages << 12, node->page_shift,
        NV_MEM_ACCESS_RW, &node->vma[0]);
 if (ret) {
  kfree(node);
  return ret;
 }

 mem->mm_node = node;
 mem->start = node->vma[0].offset >> PAGE_SHIFT;
 return 0;
}
