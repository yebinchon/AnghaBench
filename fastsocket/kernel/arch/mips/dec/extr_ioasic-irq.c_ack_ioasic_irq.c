
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fast_iob () ;
 int mask_ioasic_irq (unsigned int) ;

__attribute__((used)) static inline void ack_ioasic_irq(unsigned int irq)
{
 mask_ioasic_irq(irq);
 fast_iob();
}
