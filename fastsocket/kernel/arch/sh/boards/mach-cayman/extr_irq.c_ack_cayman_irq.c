
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_cayman_irq (unsigned int) ;

__attribute__((used)) static void ack_cayman_irq(unsigned int irq)
{
 disable_cayman_irq(irq);
}
