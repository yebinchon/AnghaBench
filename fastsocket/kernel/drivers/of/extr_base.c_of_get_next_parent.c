
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int parent; } ;


 int devtree_lock ;
 struct device_node* of_node_get (int ) ;
 int of_node_put (struct device_node*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct device_node *of_get_next_parent(struct device_node *node)
{
 struct device_node *parent;

 if (!node)
  return ((void*)0);

 read_lock(&devtree_lock);
 parent = of_node_get(node->parent);
 of_node_put(node);
 read_unlock(&devtree_lock);
 return parent;
}
