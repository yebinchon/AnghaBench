
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __prom_nextprop (int,char*) ;

char * prom_firstprop(int node, char *bufer)
{
 if (node == 0 || node == -1)
  return "";

 return __prom_nextprop(node, "");
}
