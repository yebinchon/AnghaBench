
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_FIELD (int*,int ,int) ;
 int IO_STATE (int*,int ,int ) ;
 int* R_WATCHDOG ;
 int enable ;
 int key ;
 int local_irq_disable () ;
 int printk (char*) ;
 int start ;

void hard_reset_now (void)
{
 printk("*** HARD RESET ***\n");
 local_irq_disable();






 *R_WATCHDOG = IO_FIELD(R_WATCHDOG, key, 3) |
  IO_STATE(R_WATCHDOG, enable, start);


 while(1) ;
}
