
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * IXDP2351_CPLD_INTA_MASK_CLR_REG ;
 int IXDP2351_INTA_IRQ_MASK (unsigned int) ;

__attribute__((used)) static void ixdp2351_inta_unmask(unsigned int irq)
{
 *IXDP2351_CPLD_INTA_MASK_CLR_REG = IXDP2351_INTA_IRQ_MASK(irq);
}
