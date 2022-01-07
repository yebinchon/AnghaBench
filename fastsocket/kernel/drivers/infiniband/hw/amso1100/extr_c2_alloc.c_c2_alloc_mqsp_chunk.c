
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sp_chunk {int* shared_ptr; scalar_t__ head; int * next; int dma_addr; } ;
struct c2_dev {TYPE_1__* pcidev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 struct sp_chunk* dma_alloc_coherent (int *,int,int *,int ) ;
 int mapping ;
 int pci_unmap_addr_set (struct sp_chunk*,int ,int ) ;

__attribute__((used)) static int c2_alloc_mqsp_chunk(struct c2_dev *c2dev, gfp_t gfp_mask,
          struct sp_chunk **head)
{
 int i;
 struct sp_chunk *new_head;
 dma_addr_t dma_addr;

 new_head = dma_alloc_coherent(&c2dev->pcidev->dev, PAGE_SIZE,
          &dma_addr, gfp_mask);
 if (new_head == ((void*)0))
  return -ENOMEM;

 new_head->dma_addr = dma_addr;
 pci_unmap_addr_set(new_head, mapping, new_head->dma_addr);

 new_head->next = ((void*)0);
 new_head->head = 0;


 for (i = 0;
      i < (PAGE_SIZE - sizeof(struct sp_chunk) -
    sizeof(u16)) / sizeof(u16) - 1;
      i++) {
  new_head->shared_ptr[i] = i + 1;
 }

 new_head->shared_ptr[i] = 0xFFFF;

 *head = new_head;
 return 0;
}
