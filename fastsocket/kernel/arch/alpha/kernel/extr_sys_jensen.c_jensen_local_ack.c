
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i8259a_mask_and_ack_irq (int) ;

__attribute__((used)) static void
jensen_local_ack(unsigned int irq)
{

 if (irq == 7)
  i8259a_mask_and_ack_irq(1);
}
