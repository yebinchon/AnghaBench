
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int allocated; int hole_follows; unsigned long start; unsigned long size; unsigned long color; int hole_stack; int node_list; struct drm_mm* mm; } ;
struct drm_mm {int hole_stack; int (* color_adjust ) (struct drm_mm_node*,unsigned long,unsigned long*,unsigned long*) ;} ;


 int BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 unsigned long __drm_mm_hole_node_start (struct drm_mm_node*) ;
 unsigned long drm_mm_hole_node_end (struct drm_mm_node*) ;
 unsigned long drm_mm_hole_node_start (struct drm_mm_node*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int stub1 (struct drm_mm_node*,unsigned long,unsigned long*,unsigned long*) ;

__attribute__((used)) static void drm_mm_insert_helper(struct drm_mm_node *hole_node,
     struct drm_mm_node *node,
     unsigned long size, unsigned alignment,
     unsigned long color)
{
 struct drm_mm *mm = hole_node->mm;
 unsigned long hole_start = drm_mm_hole_node_start(hole_node);
 unsigned long hole_end = drm_mm_hole_node_end(hole_node);
 unsigned long adj_start = hole_start;
 unsigned long adj_end = hole_end;

 BUG_ON(node->allocated);

 if (mm->color_adjust)
  mm->color_adjust(hole_node, color, &adj_start, &adj_end);

 if (alignment) {
  unsigned tmp = adj_start % alignment;
  if (tmp)
   adj_start += alignment - tmp;
 }

 if (adj_start == hole_start) {
  hole_node->hole_follows = 0;
  list_del(&hole_node->hole_stack);
 }

 node->start = adj_start;
 node->size = size;
 node->mm = mm;
 node->color = color;
 node->allocated = 1;

 INIT_LIST_HEAD(&node->hole_stack);
 list_add(&node->node_list, &hole_node->node_list);

 BUG_ON(node->start + node->size > adj_end);

 node->hole_follows = 0;
 if (__drm_mm_hole_node_start(node) < hole_end) {
  list_add(&node->hole_stack, &mm->hole_stack);
  node->hole_follows = 1;
 }
}
