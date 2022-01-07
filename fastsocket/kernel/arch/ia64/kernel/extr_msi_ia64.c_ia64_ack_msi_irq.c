
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_eoi () ;
 int irq_complete_move (unsigned int) ;
 int move_native_irq (unsigned int) ;

__attribute__((used)) static void ia64_ack_msi_irq(unsigned int irq)
{
 irq_complete_move(irq);
 move_native_irq(irq);
 ia64_eoi();
}
