
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_4__ {int state; int num_desc_pages; int num_pages; scalar_t__ free_on_sequence; struct page** bounce_buffer; struct page** pages; int direction; int ** desc_pages; } ;
typedef TYPE_1__ drm_via_sg_info_t ;


 int DMA_FROM_DEVICE ;
 int PageReserved (struct page*) ;
 int SetPageDirty (struct page*) ;




 int dr_via_sg_init ;
 int free_page (unsigned long) ;
 int kfree (int **) ;
 int page_cache_release (struct page*) ;
 int vfree (struct page**) ;
 int via_unmap_blit_from_device (struct pci_dev*,TYPE_1__*) ;

__attribute__((used)) static void
via_free_sg_info(struct pci_dev *pdev, drm_via_sg_info_t *vsg)
{
 struct page *page;
 int i;

 switch (vsg->state) {
 case 130:
  via_unmap_blit_from_device(pdev, vsg);
 case 131:
  for (i = 0; i < vsg->num_desc_pages; ++i) {
   if (vsg->desc_pages[i] != ((void*)0))
    free_page((unsigned long)vsg->desc_pages[i]);
  }
  kfree(vsg->desc_pages);
 case 128:
  for (i = 0; i < vsg->num_pages; ++i) {
   if (((void*)0) != (page = vsg->pages[i])) {
    if (!PageReserved(page) && (DMA_FROM_DEVICE == vsg->direction))
     SetPageDirty(page);
    page_cache_release(page);
   }
  }
 case 129:
  vfree(vsg->pages);
 default:
  vsg->state = dr_via_sg_init;
 }
 vfree(vsg->bounce_buffer);
 vsg->bounce_buffer = ((void*)0);
 vsg->free_on_sequence = 0;
}
