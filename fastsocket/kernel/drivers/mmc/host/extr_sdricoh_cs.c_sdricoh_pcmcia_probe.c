
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dev; int * prod_id; } ;
struct pci_dev {int dummy; } ;


 int ENODEV ;
 int PCI_DEVICE_ID_RICOH_RL5C476 ;
 int PCI_VENDOR_ID_RICOH ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,...) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int sdricoh_init_mmc (struct pci_dev*,struct pcmcia_device*) ;

__attribute__((used)) static int sdricoh_pcmcia_probe(struct pcmcia_device *pcmcia_dev)
{
 struct pci_dev *pci_dev = ((void*)0);

 dev_info(&pcmcia_dev->dev, "Searching MMC controller for pcmcia device"
  " %s %s ...\n", pcmcia_dev->prod_id[0], pcmcia_dev->prod_id[1]);



 while ((pci_dev =
  pci_get_device(PCI_VENDOR_ID_RICOH, PCI_DEVICE_ID_RICOH_RL5C476,
          pci_dev))) {

  if (!sdricoh_init_mmc(pci_dev, pcmcia_dev)) {
   dev_info(&pcmcia_dev->dev, "MMC controller found\n");
   return 0;
  }

 }
 dev_err(&pcmcia_dev->dev, "No MMC controller was found.\n");
 return -ENODEV;
}
