
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int CLKCTL_CLKSTP ;
 int CLKCTL_EXTCLK ;
 int CLKCTL_PD_INV ;
 int VLSI_PCI_CLKCTL ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static void vlsi_stop_clock(struct pci_dev *pdev)
{
 u8 clkctl;


 pci_read_config_byte(pdev, VLSI_PCI_CLKCTL, &clkctl);
 clkctl |= CLKCTL_CLKSTP;
 pci_write_config_byte(pdev, VLSI_PCI_CLKCTL, clkctl);


 clkctl &= ~(CLKCTL_EXTCLK | CLKCTL_PD_INV);
 pci_write_config_byte(pdev, VLSI_PCI_CLKCTL, clkctl);
}
