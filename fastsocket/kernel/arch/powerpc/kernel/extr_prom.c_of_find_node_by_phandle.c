
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {scalar_t__ linux_phandle; struct device_node* allnext; } ;
typedef scalar_t__ phandle ;


 struct device_node* allnodes ;
 int devtree_lock ;
 int of_node_get (struct device_node*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct device_node *of_find_node_by_phandle(phandle handle)
{
 struct device_node *np;

 read_lock(&devtree_lock);
 for (np = allnodes; np != 0; np = np->allnext)
  if (np->linux_phandle == handle)
   break;
 of_node_get(np);
 read_unlock(&devtree_lock);
 return np;
}
