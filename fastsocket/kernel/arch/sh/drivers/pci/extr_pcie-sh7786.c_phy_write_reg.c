
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_channel {int dummy; } ;


 unsigned int BITS_ADR ;
 int BITS_CKE ;
 int BITS_CMD ;
 unsigned int BITS_LANE ;
 int SH4A_PCIEPHYADRR ;
 int SH4A_PCIEPHYCTLR ;
 int SH4A_PCIEPHYDOUTR ;
 unsigned long pci_read_reg (struct pci_channel*,int ) ;
 int pci_write_reg (struct pci_channel*,unsigned long,int ) ;
 int phy_wait_for_ack (struct pci_channel*) ;

__attribute__((used)) static void phy_write_reg(struct pci_channel *chan, unsigned int addr,
     unsigned int lane, unsigned int data)
{
 unsigned long phyaddr, ctrl;

 phyaddr = (1 << BITS_CMD) + ((lane & 0xf) << BITS_LANE) +
   ((addr & 0xff) << BITS_ADR);


 ctrl = pci_read_reg(chan, SH4A_PCIEPHYCTLR);
 ctrl |= (1 << BITS_CKE);
 pci_write_reg(chan, ctrl, SH4A_PCIEPHYCTLR);


 pci_write_reg(chan, data, SH4A_PCIEPHYDOUTR);
 pci_write_reg(chan, phyaddr, SH4A_PCIEPHYADRR);

 phy_wait_for_ack(chan);


 pci_write_reg(chan, 0, SH4A_PCIEPHYADRR);

 phy_wait_for_ack(chan);


 ctrl = pci_read_reg(chan, SH4A_PCIEPHYCTLR);
 ctrl &= ~(1 << BITS_CKE);
 pci_write_reg(chan, ctrl, SH4A_PCIEPHYCTLR);
}
