
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* prom_nextprop (int,char*,int *) ;
 int strcmp (char*,char*) ;

int prom_node_has_property(int node, char *prop)
{
 char *current_property = "";

 do {
  current_property = prom_nextprop(node, current_property, ((void*)0));
  if(!strcmp(current_property, prop))
     return 1;
 } while (*current_property);
 return 0;
}
