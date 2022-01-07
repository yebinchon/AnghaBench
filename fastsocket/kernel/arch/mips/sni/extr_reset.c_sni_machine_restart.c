
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kb_wait () ;
 int local_irq_disable () ;
 int outb_p (int,int) ;

void sni_machine_restart(char *command)
{
 int i, j;



 local_irq_disable();
 for (;;) {
  for (i = 0; i < 100; i++) {
   kb_wait();
   for (j = 0; j < 100000 ; j++)
                 ;
   outb_p(0xfe, 0x64);
  }
 }
}
