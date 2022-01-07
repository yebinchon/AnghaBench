
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vuip ;


 scalar_t__ GRU_INT_CLEAR ;
 int i8259a_mask_and_ack_irq (unsigned int) ;
 int mb () ;

__attribute__((used)) static void
alcor_isa_mask_and_ack_irq(unsigned int irq)
{
 i8259a_mask_and_ack_irq(irq);


 *(vuip)GRU_INT_CLEAR = 0x80000000; mb();
 *(vuip)GRU_INT_CLEAR = 0; mb();
}
