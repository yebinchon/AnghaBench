
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {scalar_t__ name; struct device_node* allnext; } ;


 struct device_node* allnodes ;
 int devtree_lock ;
 scalar_t__ of_node_cmp (scalar_t__,char const*) ;
 scalar_t__ of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct device_node *of_find_node_by_name(struct device_node *from,
 const char *name)
{
 struct device_node *np;

 read_lock(&devtree_lock);
 np = from ? from->allnext : allnodes;
 for (; np; np = np->allnext)
  if (np->name && (of_node_cmp(np->name, name) == 0)
      && of_node_get(np))
   break;
 of_node_put(from);
 read_unlock(&devtree_lock);
 return np;
}
