
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_dma {int size; int dma_addr0; int cpu_addr0; int pdev; } ;


 int memset (struct flexcop_dma*,int ,int) ;
 int pci_free_consistent (int ,int,int ,int ) ;

void flexcop_dma_free(struct flexcop_dma *dma)
{
 pci_free_consistent(dma->pdev, dma->size*2,
   dma->cpu_addr0, dma->dma_addr0);
 memset(dma,0,sizeof(struct flexcop_dma));
}
