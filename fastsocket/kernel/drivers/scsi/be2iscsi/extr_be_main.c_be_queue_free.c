
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int pcidev; } ;
struct be_dma_mem {int * va; int dma; int size; } ;
struct be_queue_info {struct be_dma_mem dma_mem; } ;


 int pci_free_consistent (int ,int ,int *,int ) ;

__attribute__((used)) static void be_queue_free(struct beiscsi_hba *phba, struct be_queue_info *q)
{
 struct be_dma_mem *mem = &q->dma_mem;
 if (mem->va) {
  pci_free_consistent(phba->pcidev, mem->size,
   mem->va, mem->dma);
  mem->va = ((void*)0);
 }
}
