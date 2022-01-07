
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {struct device_node* allnext; } ;


 struct device_node* allnodes ;
 int devtree_lock ;
 scalar_t__ of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct device_node *of_find_all_nodes(struct device_node *prev)
{
 struct device_node *np;

 read_lock(&devtree_lock);
 np = prev ? prev->allnext : allnodes;
 for (; np != 0; np = np->allnext)
  if (of_node_get(np))
   break;
 of_node_put(prev);
 read_unlock(&devtree_lock);
 return np;
}
