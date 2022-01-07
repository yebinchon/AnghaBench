
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sp_chunk {struct sp_chunk* next; } ;
struct c2_dev {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,struct sp_chunk*,int ) ;
 int mapping ;
 int pci_unmap_addr (struct sp_chunk*,int ) ;

void c2_free_mqsp_pool(struct c2_dev *c2dev, struct sp_chunk *root)
{
 struct sp_chunk *next;

 while (root) {
  next = root->next;
  dma_free_coherent(&c2dev->pcidev->dev, PAGE_SIZE, root,
      pci_unmap_addr(root, mapping));
  root = next;
 }
}
