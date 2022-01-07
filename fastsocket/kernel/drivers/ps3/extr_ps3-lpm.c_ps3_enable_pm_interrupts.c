
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int pm_status ;
 int ps3_write_pm (scalar_t__,int ,scalar_t__) ;

void ps3_enable_pm_interrupts(u32 cpu, u32 thread, u32 mask)
{
 if (mask)
  ps3_write_pm(cpu, pm_status, mask);
}
