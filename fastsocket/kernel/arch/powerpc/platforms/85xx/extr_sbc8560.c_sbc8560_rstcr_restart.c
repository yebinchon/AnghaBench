
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ brstcr ;
 int clrbits8 (scalar_t__,int) ;
 int local_irq_disable () ;

void sbc8560_rstcr_restart(char * cmd)
{
 local_irq_disable();
 if(brstcr)
  clrbits8(brstcr, 0x80);

 while(1);
}
