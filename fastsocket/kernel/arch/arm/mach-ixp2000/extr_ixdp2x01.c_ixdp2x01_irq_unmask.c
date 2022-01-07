
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IXDP2X01_INT_MASK_CLR_REG ;
 int IXP2000_BOARD_IRQ_MASK (unsigned int) ;
 int ixp2000_reg_write (int ,int ) ;

__attribute__((used)) static void ixdp2x01_irq_unmask(unsigned int irq)
{
 ixp2000_reg_write(IXDP2X01_INT_MASK_CLR_REG,
    IXP2000_BOARD_IRQ_MASK(irq));
}
