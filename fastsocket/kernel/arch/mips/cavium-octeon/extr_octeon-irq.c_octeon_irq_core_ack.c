
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int OCTEON_IRQ_SW0 ;
 int clear_c0_cause (int) ;
 int clear_c0_status (int) ;

__attribute__((used)) static void octeon_irq_core_ack(unsigned int irq)
{
 unsigned int bit = irq - OCTEON_IRQ_SW0;





 clear_c0_status(0x100 << bit);

 if (bit < 2)
  clear_c0_cause(0x100 << bit);
}
