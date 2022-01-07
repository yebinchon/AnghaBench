
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int cbe_write_pm (scalar_t__,int ,scalar_t__) ;
 int iic_set_interrupt_routing (scalar_t__,scalar_t__,int ) ;
 int pm_status ;

void cbe_enable_pm_interrupts(u32 cpu, u32 thread, u32 mask)
{

 iic_set_interrupt_routing(cpu, thread, 0);


 if (mask)
  cbe_write_pm(cpu, pm_status, mask);
}
