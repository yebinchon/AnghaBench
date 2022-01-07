
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jprobe_return () ;
 int lkdtm_handler () ;

__attribute__((used)) static unsigned int jp_do_irq(unsigned int irq)
{
 lkdtm_handler();
 jprobe_return();
 return 0;
}
