
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {struct device_node* sibling; struct device_node* child; } ;


 int devtree_lock ;
 scalar_t__ of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct device_node *of_get_next_child(const struct device_node *node,
 struct device_node *prev)
{
 struct device_node *next;

 read_lock(&devtree_lock);
 next = prev ? prev->sibling : node->child;
 for (; next; next = next->sibling)
  if (of_node_get(next))
   break;
 of_node_put(prev);
 read_unlock(&devtree_lock);
 return next;
}
