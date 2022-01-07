
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pm_status ;
 int ps3_get_and_clear_pm_interrupts (int ) ;
 int ps3_write_pm (int ,int ,int ) ;

void ps3_disable_pm_interrupts(u32 cpu)
{
 ps3_get_and_clear_pm_interrupts(cpu);
 ps3_write_pm(cpu, pm_status, 0);
}
