
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 scalar_t__ ESR_BASE ;
 int EVENT_BIT (unsigned int) ;
 int LEVEL (unsigned int) ;
 int disable_systemasic_irq (unsigned int) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static void mask_ack_systemasic_irq(unsigned int irq)
{
 __u32 esr = ESR_BASE + (LEVEL(irq) << 2);
 disable_systemasic_irq(irq);
 outl((1 << EVENT_BIT(irq)), esr);
}
