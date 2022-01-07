
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int pdev; } ;
struct ring_info {int * data; } ;


 int PCI_DMA_FROMDEVICE ;
 int dma_unmap_addr (struct ring_info*,int ) ;
 int kfree (int *) ;
 int mapping ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void tg3_rx_data_free(struct tg3 *tp, struct ring_info *ri, u32 map_sz)
{
 if (!ri->data)
  return;

 pci_unmap_single(tp->pdev, dma_unmap_addr(ri, mapping),
    map_sz, PCI_DMA_FROMDEVICE);
 kfree(ri->data);
 ri->data = ((void*)0);
}
