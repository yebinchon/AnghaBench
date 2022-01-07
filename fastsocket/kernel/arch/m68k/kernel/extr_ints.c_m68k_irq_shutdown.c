
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_AUTO_7 ;
 size_t IRQ_USER ;
 unsigned int VEC_SPUR ;
 int bad_inthandler ;
 size_t m68k_first_user_vec ;
 int * vectors ;

void m68k_irq_shutdown(unsigned int irq)
{
 if (irq <= IRQ_AUTO_7)
  vectors[VEC_SPUR + irq] = bad_inthandler;
 else
  vectors[m68k_first_user_vec + irq - IRQ_USER] = bad_inthandler;
}
