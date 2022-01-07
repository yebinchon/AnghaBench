
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CAUSEF_IP ;
 int CAUSEF_IP2 ;
 int CAUSEF_IP3 ;
 int CAUSEF_IP4 ;
 int CAUSEF_IP5 ;
 int CAUSEF_IP6 ;
 int CAUSEF_IP7 ;
 int clear_c0_status (int) ;
 int do_IRQ (int) ;
 int read_c0_cause () ;
 int read_c0_status () ;

void plat_irq_dispatch(void)
{
 u32 cause;

 cause = read_c0_cause() & read_c0_status() & CAUSEF_IP;

 clear_c0_status(cause);

 if (cause & CAUSEF_IP7)
  do_IRQ(7);
 if (cause & CAUSEF_IP2)
  do_IRQ(2);
 if (cause & CAUSEF_IP3)
  do_IRQ(3);
 if (cause & CAUSEF_IP4)
  do_IRQ(4);
 if (cause & CAUSEF_IP5)
  do_IRQ(5);
 if (cause & CAUSEF_IP6)
  do_IRQ(6);
}
