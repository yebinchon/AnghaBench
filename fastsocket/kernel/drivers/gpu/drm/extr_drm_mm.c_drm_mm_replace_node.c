
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int allocated; int color; int size; int start; int mm; int hole_follows; int hole_stack; int node_list; } ;


 int list_replace (int *,int *) ;

void drm_mm_replace_node(struct drm_mm_node *old, struct drm_mm_node *new)
{
 list_replace(&old->node_list, &new->node_list);
 list_replace(&old->hole_stack, &new->hole_stack);
 new->hole_follows = old->hole_follows;
 new->mm = old->mm;
 new->start = old->start;
 new->size = old->size;
 new->color = old->color;

 old->allocated = 0;
 new->allocated = 1;
}
