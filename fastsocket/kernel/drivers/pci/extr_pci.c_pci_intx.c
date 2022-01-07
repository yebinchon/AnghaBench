
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_devres {int restore_intx; int orig_intx; } ;
struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 struct pci_devres* find_pci_dr (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

void
pci_intx(struct pci_dev *pdev, int enable)
{
 u16 pci_command, new;

 pci_read_config_word(pdev, PCI_COMMAND, &pci_command);

 if (enable) {
  new = pci_command & ~PCI_COMMAND_INTX_DISABLE;
 } else {
  new = pci_command | PCI_COMMAND_INTX_DISABLE;
 }

 if (new != pci_command) {
  struct pci_devres *dr;

  pci_write_config_word(pdev, PCI_COMMAND, new);

  dr = find_pci_dr(pdev);
  if (dr && !dr->restore_intx) {
   dr->restore_intx = 1;
   dr->orig_intx = !enable;
  }
 }
}
