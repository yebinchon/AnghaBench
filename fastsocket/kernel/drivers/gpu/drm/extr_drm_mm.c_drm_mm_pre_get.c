
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int node_list; } ;
struct drm_mm {int num_unused; int unused_lock; int unused_nodes; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MM_UNUSED_TARGET ;
 struct drm_mm_node* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

int drm_mm_pre_get(struct drm_mm *mm)
{
 struct drm_mm_node *node;

 spin_lock(&mm->unused_lock);
 while (mm->num_unused < MM_UNUSED_TARGET) {
  spin_unlock(&mm->unused_lock);
  node = kzalloc(sizeof(*node), GFP_KERNEL);
  spin_lock(&mm->unused_lock);

  if (unlikely(node == ((void*)0))) {
   int ret = (mm->num_unused < 2) ? -ENOMEM : 0;
   spin_unlock(&mm->unused_lock);
   return ret;
  }
  ++mm->num_unused;
  list_add_tail(&node->node_list, &mm->unused_nodes);
 }
 spin_unlock(&mm->unused_lock);
 return 0;
}
