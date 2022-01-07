
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_placement {int dummy; } ;
struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {int num_pages; scalar_t__ start; struct nouveau_mem* mm_node; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_mem {int page_shift; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 struct nouveau_mem* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
nouveau_gart_manager_new(struct ttm_mem_type_manager *man,
    struct ttm_buffer_object *bo,
    struct ttm_placement *placement,
    struct ttm_mem_reg *mem)
{
 struct nouveau_mem *node;

 if (unlikely((mem->num_pages << PAGE_SHIFT) >= 512 * 1024 * 1024))
  return -ENOMEM;

 node = kzalloc(sizeof(*node), GFP_KERNEL);
 if (!node)
  return -ENOMEM;
 node->page_shift = 12;

 mem->mm_node = node;
 mem->start = 0;
 return 0;
}
