
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PCM027_IRQ (int ) ;
 int PCM990_INTMSKENA ;
 int PCM990_INTSETCLR ;
 int pcm990_irq_enabled ;

__attribute__((used)) static void pcm990_unmask_irq(unsigned int irq)
{
 int pcm990_irq = (irq - PCM027_IRQ(0));

 PCM990_INTSETCLR |= 1 << pcm990_irq;
 PCM990_INTMSKENA = (pcm990_irq_enabled |= (1 << pcm990_irq));
}
