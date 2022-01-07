
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_user_dma {int page_count; int * map; scalar_t__ SG_length; int SGlist; } ;
struct ivtv {int pdev; struct ivtv_user_dma udma; } ;


 int IVTV_DEBUG_INFO (char*) ;
 int PCI_DMA_TODEVICE ;
 int ivtv_udma_sync_for_cpu (struct ivtv*) ;
 int pci_unmap_sg (int ,int ,int,int ) ;
 int put_page (int ) ;

void ivtv_udma_unmap(struct ivtv *itv)
{
 struct ivtv_user_dma *dma = &itv->udma;
 int i;

 IVTV_DEBUG_INFO("ivtv_unmap_user_dma\n");


 if (dma->page_count == 0)
  return;


 if (dma->SG_length) {
  pci_unmap_sg(itv->pdev, dma->SGlist, dma->page_count, PCI_DMA_TODEVICE);
  dma->SG_length = 0;
 }

 ivtv_udma_sync_for_cpu(itv);


 for (i = 0; i < dma->page_count; i++) {
  put_page(dma->map[i]);
 }
 dma->page_count = 0;
}
