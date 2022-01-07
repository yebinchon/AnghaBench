
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_getproplen (int,char*) ;

int prom_getbool(int node, char *prop)
{
 int retval;

 retval = prom_getproplen(node, prop);
 if(retval == -1) return 0;
 return 1;
}
