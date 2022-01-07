
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PA_CPLD_IMSK ;
 unsigned int SE7343_FPGA_IRQ_BASE ;
 int ctrl_inw (int ) ;
 int ctrl_outw (int,int ) ;

__attribute__((used)) static void disable_se7343_irq(unsigned int irq)
{
 unsigned int bit = irq - SE7343_FPGA_IRQ_BASE;
 ctrl_outw(ctrl_inw(PA_CPLD_IMSK) | 1 << bit, PA_CPLD_IMSK);
}
