
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int node_list; struct drm_mm* mm; } ;
struct drm_mm {scalar_t__ num_unused; int unused_lock; int unused_nodes; } ;


 scalar_t__ MM_UNUSED_TARGET ;
 int drm_mm_remove_node (struct drm_mm_node*) ;
 int kfree (struct drm_mm_node*) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void drm_mm_put_block(struct drm_mm_node *node)
{

 struct drm_mm *mm = node->mm;

 drm_mm_remove_node(node);

 spin_lock(&mm->unused_lock);
 if (mm->num_unused < MM_UNUSED_TARGET) {
  list_add(&node->node_list, &mm->unused_nodes);
  ++mm->num_unused;
 } else
  kfree(node);
 spin_unlock(&mm->unused_lock);
}
