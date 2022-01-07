
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfe_cons_handle ;
 scalar_t__ cfe_write (int ,char*,int) ;

void prom_putchar(char c)
{
 while (cfe_write(cfe_cons_handle, &c, 1) == 0)
  ;
}
