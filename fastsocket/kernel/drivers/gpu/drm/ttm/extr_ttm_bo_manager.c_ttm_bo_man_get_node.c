
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm {int dummy; } ;
struct ttm_range_manager {int lock; struct drm_mm mm; } ;
struct ttm_placement {unsigned long lpfn; int fpfn; } ;
struct ttm_mem_type_manager {unsigned long size; scalar_t__ priv; } ;
struct ttm_mem_reg {int start; struct drm_mm_node* mm_node; int page_alignment; int num_pages; } ;
struct ttm_buffer_object {int dummy; } ;
struct drm_mm_node {int start; } ;


 struct drm_mm_node* drm_mm_get_block_atomic_range (struct drm_mm_node*,int ,int ,int ,unsigned long) ;
 int drm_mm_pre_get (struct drm_mm*) ;
 struct drm_mm_node* drm_mm_search_free_in_range (struct drm_mm*,int ,int ,int ,unsigned long,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ttm_bo_man_get_node(struct ttm_mem_type_manager *man,
          struct ttm_buffer_object *bo,
          struct ttm_placement *placement,
          struct ttm_mem_reg *mem)
{
 struct ttm_range_manager *rman = (struct ttm_range_manager *) man->priv;
 struct drm_mm *mm = &rman->mm;
 struct drm_mm_node *node = ((void*)0);
 unsigned long lpfn;
 int ret;

 lpfn = placement->lpfn;
 if (!lpfn)
  lpfn = man->size;
 do {
  ret = drm_mm_pre_get(mm);
  if (unlikely(ret))
   return ret;

  spin_lock(&rman->lock);
  node = drm_mm_search_free_in_range(mm,
     mem->num_pages, mem->page_alignment,
     placement->fpfn, lpfn, 1);
  if (unlikely(node == ((void*)0))) {
   spin_unlock(&rman->lock);
   return 0;
  }
  node = drm_mm_get_block_atomic_range(node, mem->num_pages,
           mem->page_alignment,
           placement->fpfn,
           lpfn);
  spin_unlock(&rman->lock);
 } while (node == ((void*)0));

 mem->mm_node = node;
 mem->start = node->start;
 return 0;
}
