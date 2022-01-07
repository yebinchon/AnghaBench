
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_BASE_FPGA ;
 int __clr_IFR (int) ;

__attribute__((used)) static void frv_fpga_ack(unsigned int irq)
{
 __clr_IFR(1 << (irq - IRQ_BASE_FPGA));
}
