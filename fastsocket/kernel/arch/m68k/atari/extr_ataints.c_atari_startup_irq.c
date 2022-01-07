
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atari_enable_irq (unsigned int) ;
 int atari_turnon_irq (unsigned int) ;
 int m68k_irq_startup (unsigned int) ;

__attribute__((used)) static int atari_startup_irq(unsigned int irq)
{
 m68k_irq_startup(irq);
 atari_turnon_irq(irq);
 atari_enable_irq(irq);
 return 0;
}
