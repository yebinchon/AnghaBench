
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __prom_getsibling (int) ;

int prom_getsibling(int node)
{
 int sibnode;

 if (node == -1)
  return 0;

 sibnode = __prom_getsibling(node);
 if (sibnode == 0 || sibnode == -1)
  return 0;

 return sibnode;
}
