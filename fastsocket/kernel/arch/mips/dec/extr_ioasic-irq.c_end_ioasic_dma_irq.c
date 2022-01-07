
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_ioasic_irq (unsigned int) ;
 int end_ioasic_irq (unsigned int) ;
 int fast_iob () ;

__attribute__((used)) static inline void end_ioasic_dma_irq(unsigned int irq)
{
 clear_ioasic_irq(irq);
 fast_iob();
 end_ioasic_irq(irq);
}
