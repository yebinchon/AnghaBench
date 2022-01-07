
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __prom_getchild (int) ;

int prom_getchild(int node)
{
 int cnode;

 if (node == -1)
  return 0;

 cnode = __prom_getchild(node);
 if (cnode == 0 || cnode == -1)
  return 0;

 return cnode;
}
