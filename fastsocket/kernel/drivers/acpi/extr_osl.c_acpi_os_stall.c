
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int touch_nmi_watchdog () ;
 int udelay (scalar_t__) ;

void acpi_os_stall(u32 us)
{
 while (us) {
  u32 delay = 1000;

  if (delay > us)
   delay = us;
  udelay(delay);
  touch_nmi_watchdog();
  us -= delay;
 }
}
