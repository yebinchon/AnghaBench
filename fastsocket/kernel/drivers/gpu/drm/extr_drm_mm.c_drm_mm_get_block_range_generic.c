
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int mm; } ;


 int drm_mm_insert_helper_range (struct drm_mm_node*,struct drm_mm_node*,unsigned long,unsigned int,unsigned long,unsigned long,unsigned long) ;
 struct drm_mm_node* drm_mm_kmalloc (int ,int) ;
 scalar_t__ unlikely (int ) ;

struct drm_mm_node *drm_mm_get_block_range_generic(struct drm_mm_node *hole_node,
      unsigned long size,
      unsigned alignment,
      unsigned long color,
      unsigned long start,
      unsigned long end,
      int atomic)
{
 struct drm_mm_node *node;

 node = drm_mm_kmalloc(hole_node->mm, atomic);
 if (unlikely(node == ((void*)0)))
  return ((void*)0);

 drm_mm_insert_helper_range(hole_node, node, size, alignment, color,
       start, end);

 return node;
}
