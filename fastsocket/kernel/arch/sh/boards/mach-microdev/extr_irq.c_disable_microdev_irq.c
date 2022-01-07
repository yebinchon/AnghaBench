
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int fpgaIrq; int mapped; } ;


 int MICRODEV_FPGA_INTC_MASK (unsigned int) ;
 int MICRODEV_FPGA_INTDSB_REG ;
 unsigned int NUM_EXTERNAL_IRQS ;
 int ctrl_outl (int ,int ) ;
 TYPE_1__* fpgaIrqTable ;

__attribute__((used)) static void disable_microdev_irq(unsigned int irq)
{
 unsigned int fpgaIrq;

 if (irq >= NUM_EXTERNAL_IRQS)
  return;
 if (!fpgaIrqTable[irq].mapped)
  return;

 fpgaIrq = fpgaIrqTable[irq].fpgaIrq;


 ctrl_outl(MICRODEV_FPGA_INTC_MASK(fpgaIrq), MICRODEV_FPGA_INTDSB_REG);
}
