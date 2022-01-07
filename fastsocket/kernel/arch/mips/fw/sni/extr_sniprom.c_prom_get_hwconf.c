
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ CKSEG1ADDR (int) ;
 int _prom_get_hwconf () ;

void *prom_get_hwconf(void)
{
 u32 hwconf = _prom_get_hwconf();

 if (hwconf == 0xffffffff)
  return ((void*)0);

 return (void *)CKSEG1ADDR(hwconf);
}
