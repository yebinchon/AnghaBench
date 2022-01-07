
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_getproperty (int,char*,char*,int) ;

int prom_getint(int node, char *prop)
{
 static int intprop;

 if(prom_getproperty(node, prop, (char *) &intprop, sizeof(int)) != -1)
  return intprop;

 return -1;
}
