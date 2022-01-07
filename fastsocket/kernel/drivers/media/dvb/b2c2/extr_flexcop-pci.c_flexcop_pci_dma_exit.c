
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_pci {int init_state; int * dma; } ;


 int FC_PCI_DMA_INIT ;
 int flexcop_dma_free (int *) ;

__attribute__((used)) static void flexcop_pci_dma_exit(struct flexcop_pci *fc_pci)
{
 if (fc_pci->init_state & FC_PCI_DMA_INIT) {
  flexcop_dma_free(&fc_pci->dma[0]);
  flexcop_dma_free(&fc_pci->dma[1]);
 }
 fc_pci->init_state &= ~FC_PCI_DMA_INIT;
}
