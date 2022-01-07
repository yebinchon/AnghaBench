
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iob () ;
 int mask_kn02_irq (unsigned int) ;

__attribute__((used)) static void ack_kn02_irq(unsigned int irq)
{
 mask_kn02_irq(irq);
 iob();
}
