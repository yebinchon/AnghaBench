
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_is_pxa2xx () ;
 scalar_t__ cpu_is_pxa3xx () ;
 int pxa2xx_clear_reset_status (unsigned int) ;
 int pxa3xx_clear_reset_status (unsigned int) ;

void clear_reset_status(unsigned int mask)
{
 if (cpu_is_pxa2xx())
  pxa2xx_clear_reset_status(mask);

 if (cpu_is_pxa3xx())
  pxa3xx_clear_reset_status(mask);
}
