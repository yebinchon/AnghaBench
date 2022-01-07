
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vuip ;


 scalar_t__ GRU_INT_CLEAR ;
 int alcor_disable_irq (unsigned int) ;
 int mb () ;

__attribute__((used)) static void
alcor_mask_and_ack_irq(unsigned int irq)
{
 alcor_disable_irq(irq);


 *(vuip)GRU_INT_CLEAR = 1 << (irq - 16); mb();
 *(vuip)GRU_INT_CLEAR = 0; mb();
}
