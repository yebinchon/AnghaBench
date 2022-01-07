
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct ipath_user_sdma_pkt {int naddr; } ;
struct ipath_devdata {TYPE_1__* pcidev; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {int mm; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 unsigned long PAGE_MASK ;
 TYPE_2__* current ;
 int dma_map_page (int *,struct page*,int ,int const,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int get_user_pages (TYPE_2__*,int ,unsigned long,int,int ,int,struct page**,int *) ;
 int ipath_user_sdma_init_frag (struct ipath_user_sdma_pkt*,int ,unsigned long,int const,int,int,struct page*,int ,int ) ;
 int ipath_user_sdma_page_length (unsigned long,int) ;
 int kmap (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static int ipath_user_sdma_pin_pages(const struct ipath_devdata *dd,
         struct ipath_user_sdma_pkt *pkt,
         unsigned long addr, int tlen, int npages)
{
 struct page *pages[2];
 int j;
 int ret;

 ret = get_user_pages(current, current->mm, addr,
        npages, 0, 1, pages, ((void*)0));

 if (ret != npages) {
  int i;

  for (i = 0; i < ret; i++)
   put_page(pages[i]);

  ret = -ENOMEM;
  goto done;
 }

 for (j = 0; j < npages; j++) {

  const int flen =
   ipath_user_sdma_page_length(addr, tlen);
  dma_addr_t dma_addr =
   dma_map_page(&dd->pcidev->dev,
         pages[j], 0, flen, DMA_TO_DEVICE);
  unsigned long fofs = addr & ~PAGE_MASK;

  if (dma_mapping_error(&dd->pcidev->dev, dma_addr)) {
   ret = -ENOMEM;
   goto done;
  }

  ipath_user_sdma_init_frag(pkt, pkt->naddr, fofs, flen, 1, 1,
       pages[j], kmap(pages[j]),
       dma_addr);

  pkt->naddr++;
  addr += flen;
  tlen -= flen;
 }

done:
 return ret;
}
