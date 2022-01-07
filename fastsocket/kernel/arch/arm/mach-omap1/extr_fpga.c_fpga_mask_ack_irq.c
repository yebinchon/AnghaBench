
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpga_ack_irq (unsigned int) ;
 int fpga_mask_irq (unsigned int) ;

__attribute__((used)) static void fpga_mask_ack_irq(unsigned int irq)
{
 fpga_mask_irq(irq);
 fpga_ack_irq(irq);
}
