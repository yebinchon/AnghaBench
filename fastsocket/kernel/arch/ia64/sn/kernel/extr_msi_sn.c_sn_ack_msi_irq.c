
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_eoi () ;
 int move_native_irq (unsigned int) ;

__attribute__((used)) static void sn_ack_msi_irq(unsigned int irq)
{
 move_native_irq(irq);
 ia64_eoi();
}
