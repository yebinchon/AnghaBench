
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_IXP2000_DRAM0_MIN_ERR ;
 int IXP2000_IRQ_ERR_ENABLE_CLR ;
 int ixp2000_reg_write (int ,int) ;

__attribute__((used)) static void ixp2000_err_irq_mask(unsigned int irq)
{
 ixp2000_reg_write(IXP2000_IRQ_ERR_ENABLE_CLR,
   (1 << (irq - IRQ_IXP2000_DRAM0_MIN_ERR)));
}
