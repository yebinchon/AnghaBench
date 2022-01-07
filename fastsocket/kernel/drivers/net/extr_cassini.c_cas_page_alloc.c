
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct cas {int page_size; int pdev; int page_order; } ;
typedef int gfp_t ;
struct TYPE_6__ {int buffer; int dma_addr; int list; } ;
typedef TYPE_1__ cas_page_t ;


 int INIT_LIST_HEAD (int *) ;
 int PCI_DMA_FROMDEVICE ;
 int RX_USED_SET (TYPE_1__*,int ) ;
 int alloc_pages (int const,int ) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kmalloc (int,int const) ;
 int pci_map_page (int ,int ,int ,int ,int ) ;

__attribute__((used)) static cas_page_t *cas_page_alloc(struct cas *cp, const gfp_t flags)
{
 cas_page_t *page;

 page = kmalloc(sizeof(cas_page_t), flags);
 if (!page)
  return ((void*)0);

 INIT_LIST_HEAD(&page->list);
 RX_USED_SET(page, 0);
 page->buffer = alloc_pages(flags, cp->page_order);
 if (!page->buffer)
  goto page_err;
 page->dma_addr = pci_map_page(cp->pdev, page->buffer, 0,
          cp->page_size, PCI_DMA_FROMDEVICE);
 return page;

page_err:
 kfree(page);
 return ((void*)0);
}
