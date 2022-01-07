
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_BRIDGE_CONTROL ;
 int PCI_BRIDGE_CTL_BUS_RESET ;
 int msleep (int) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

void aer_do_secondary_bus_reset(struct pci_dev *dev)
{
 u16 p2p_ctrl;


 pci_read_config_word(dev, PCI_BRIDGE_CONTROL, &p2p_ctrl);
 p2p_ctrl |= PCI_BRIDGE_CTL_BUS_RESET;
 pci_write_config_word(dev, PCI_BRIDGE_CONTROL, p2p_ctrl);





 msleep(2);


 p2p_ctrl &= ~PCI_BRIDGE_CTL_BUS_RESET;
 pci_write_config_word(dev, PCI_BRIDGE_CONTROL, p2p_ctrl);






 msleep(200);
}
