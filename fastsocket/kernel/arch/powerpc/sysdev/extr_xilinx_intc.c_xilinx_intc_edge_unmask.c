
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XINTC_SIE ;
 void* get_irq_chip_data (unsigned int) ;
 int out_be32 (void*,int) ;
 int pr_debug (char*,int) ;
 int virq_to_hw (unsigned int) ;

__attribute__((used)) static void xilinx_intc_edge_unmask(unsigned int virq)
{
 int irq = virq_to_hw(virq);
 void *regs = get_irq_chip_data(virq);
 pr_debug("unmask: %d\n", irq);
 out_be32(regs + XINTC_SIE, 1 << irq);
}
