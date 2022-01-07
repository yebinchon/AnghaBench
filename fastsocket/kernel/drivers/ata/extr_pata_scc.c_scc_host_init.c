
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ata_host {int * iomap; TYPE_1__** ports; int dev; } ;
struct TYPE_2__ {int ioaddr; } ;


 int ATA_DMA_MASK ;
 size_t SCC_BMID_BAR ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int scc_reset_controller (struct ata_host*) ;
 int scc_setup_ports (int *,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int scc_host_init(struct ata_host *host)
{
 struct pci_dev *pdev = to_pci_dev(host->dev);
 int rc;

 rc = scc_reset_controller(host);
 if (rc)
  return rc;

 rc = pci_set_dma_mask(pdev, ATA_DMA_MASK);
 if (rc)
  return rc;
 rc = pci_set_consistent_dma_mask(pdev, ATA_DMA_MASK);
 if (rc)
  return rc;

 scc_setup_ports(&host->ports[0]->ioaddr, host->iomap[SCC_BMID_BAR]);

 pci_set_master(pdev);

 return 0;
}
