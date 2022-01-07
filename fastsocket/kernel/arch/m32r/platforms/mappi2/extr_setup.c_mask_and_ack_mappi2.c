
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_mappi2_irq (unsigned int) ;

__attribute__((used)) static void mask_and_ack_mappi2(unsigned int irq)
{
 disable_mappi2_irq(irq);
}
