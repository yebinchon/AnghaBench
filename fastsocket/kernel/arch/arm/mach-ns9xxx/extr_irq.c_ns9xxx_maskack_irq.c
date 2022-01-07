
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ns9xxx_ack_irq (unsigned int) ;
 int ns9xxx_mask_irq (unsigned int) ;

__attribute__((used)) static void ns9xxx_maskack_irq(unsigned int irq)
{
 ns9xxx_mask_irq(irq);
 ns9xxx_ack_irq(irq);
}
