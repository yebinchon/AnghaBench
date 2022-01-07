
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef scalar_t__ u_char ;


 size_t CyCCR ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int my_udelay (long) ;

u_short write_cy_cmd(volatile u_char * base_addr, u_char cmd)
{
 unsigned long flags;
 volatile int i;

 local_irq_save(flags);

 for (i = 0; i < 100; i++) {
  if (base_addr[CyCCR] == 0) {
   break;
  }
  my_udelay(10L);
 }


 if (i == 10) {
  local_irq_restore(flags);
  return (-1);
 }


 base_addr[CyCCR] = cmd;
 local_irq_restore(flags);
 return (0);
}
