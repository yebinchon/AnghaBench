
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* arcs_cmdline ;

char *prom_getcmdline(void)
{
 return &(arcs_cmdline[0]);
}
