
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_AUTO_4 ;
 size_t VEC_INT4 ;
 int atari_disable_irq (unsigned int) ;
 int atari_turnoff_irq (unsigned int) ;
 int falcon_hblhandler ;
 int m68k_irq_shutdown (unsigned int) ;
 int * vectors ;

__attribute__((used)) static void atari_shutdown_irq(unsigned int irq)
{
 atari_disable_irq(irq);
 atari_turnoff_irq(irq);
 m68k_irq_shutdown(irq);

 if (irq == IRQ_AUTO_4)
     vectors[VEC_INT4] = falcon_hblhandler;
}
