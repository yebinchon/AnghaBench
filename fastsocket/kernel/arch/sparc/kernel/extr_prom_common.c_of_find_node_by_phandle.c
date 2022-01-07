
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {scalar_t__ node; struct device_node* allnext; } ;
typedef scalar_t__ phandle ;


 struct device_node* allnodes ;

struct device_node *of_find_node_by_phandle(phandle handle)
{
 struct device_node *np;

 for (np = allnodes; np; np = np->allnext)
  if (np->node == handle)
   break;

 return np;
}
