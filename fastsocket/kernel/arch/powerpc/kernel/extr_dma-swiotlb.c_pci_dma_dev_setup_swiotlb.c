
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_archdata {scalar_t__ max_direct_dma_addr; } ;
struct TYPE_2__ {struct dev_archdata archdata; } ;
struct pci_dev {TYPE_1__ dev; int bus; } ;
struct pci_controller {scalar_t__ dma_window_size; scalar_t__ dma_window_base_cur; } ;


 struct pci_controller* pci_bus_to_host (int ) ;

void pci_dma_dev_setup_swiotlb(struct pci_dev *pdev)
{
 struct pci_controller *hose;
 struct dev_archdata *sd;

 hose = pci_bus_to_host(pdev->bus);
 sd = &pdev->dev.archdata;
 sd->max_direct_dma_addr =
  hose->dma_window_base_cur + hose->dma_window_size;
}
