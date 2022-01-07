
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_systemh_irq (unsigned int) ;

__attribute__((used)) static void mask_and_ack_systemh(unsigned int irq)
{
 disable_systemh_irq(irq);
}
