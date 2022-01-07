
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int buf; } ;
union mthca_buf {TYPE_2__* page_list; TYPE_2__ direct; } ;
struct mthca_mr {int dummy; } ;
struct mthca_dev {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int kfree (TYPE_2__*) ;
 int mapping ;
 int mthca_free_mr (struct mthca_dev*,struct mthca_mr*) ;
 int pci_unmap_addr (TYPE_2__*,int ) ;

void mthca_buf_free(struct mthca_dev *dev, int size, union mthca_buf *buf,
      int is_direct, struct mthca_mr *mr)
{
 int i;

 if (mr)
  mthca_free_mr(dev, mr);

 if (is_direct)
  dma_free_coherent(&dev->pdev->dev, size, buf->direct.buf,
      pci_unmap_addr(&buf->direct, mapping));
 else {
  for (i = 0; i < (size + PAGE_SIZE - 1) / PAGE_SIZE; ++i)
   dma_free_coherent(&dev->pdev->dev, PAGE_SIZE,
       buf->page_list[i].buf,
       pci_unmap_addr(&buf->page_list[i],
        mapping));
  kfree(buf->page_list);
 }
}
