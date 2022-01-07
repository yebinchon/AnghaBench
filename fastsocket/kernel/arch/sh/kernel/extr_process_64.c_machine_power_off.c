
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;

void machine_power_off(void)
{
 __asm__ __volatile__ (
  "sleep\n\t"
  "synci\n\t"
  "nop;nop;nop;nop\n\t"
 );

 panic("Unexpected wakeup!\n");
}
