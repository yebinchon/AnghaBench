
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_getproperty (int,char const*,char*,int) ;

inline int prom_getint(int node, const char *prop)
{
 int intprop;

 if(prom_getproperty(node, prop, (char *) &intprop, sizeof(int)) != -1)
  return intprop;

 return -1;
}
