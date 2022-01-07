
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int parent; } ;


 int devtree_lock ;
 struct device_node* of_node_get (int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct device_node *of_get_parent(const struct device_node *node)
{
 struct device_node *np;

 if (!node)
  return ((void*)0);

 read_lock(&devtree_lock);
 np = of_node_get(node->parent);
 read_unlock(&devtree_lock);
 return np;
}
