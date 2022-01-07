
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_rx; int rx_ring; struct pci_dev* pdev; } ;
typedef TYPE_1__ vlsi_irda_dev_t ;
typedef int u8 ;
struct pci_dev {int dummy; } ;
struct net_device {unsigned int base_addr; } ;


 int IRMISC_UARTEN ;
 int IRMISC_UARTTST ;
 int MSTRPAGE_VALUE ;
 int VLSI_PCI_IRMISC ;
 int VLSI_PCI_MSTRPAGE ;
 scalar_t__ VLSI_PIO_PROMPT ;
 int do_gettimeofday (int *) ;
 int outw (int ,scalar_t__) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int vlsi_fill_rx (int ) ;
 scalar_t__ vlsi_init_chip (struct pci_dev*) ;

__attribute__((used)) static int vlsi_start_hw(vlsi_irda_dev_t *idev)
{
 struct pci_dev *pdev = idev->pdev;
 struct net_device *ndev = pci_get_drvdata(pdev);
 unsigned iobase = ndev->base_addr;
 u8 byte;



 pci_read_config_byte(pdev, VLSI_PCI_IRMISC, &byte);
 byte &= ~(IRMISC_UARTEN | IRMISC_UARTTST);
 pci_write_config_byte(pdev, VLSI_PCI_IRMISC, byte);



 pci_write_config_byte(pdev, VLSI_PCI_MSTRPAGE, MSTRPAGE_VALUE);
 pci_set_master(pdev);

 if (vlsi_init_chip(pdev) < 0) {
  pci_disable_device(pdev);
  return -1;
 }

 vlsi_fill_rx(idev->rx_ring);

 do_gettimeofday(&idev->last_rx);

 outw(0, iobase+VLSI_PIO_PROMPT);

 return 0;
}
