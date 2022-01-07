
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qib_user_sdma_queue {int pkt_slab; int header_cache; int counter; } ;
struct qib_user_sdma_pkt {int list; } ;
struct qib_devdata {TYPE_1__* pcidev; } ;
struct page {int dummy; } ;
struct list_head {int dummy; } ;
struct iovec {size_t iov_len; scalar_t__ iov_base; } ;
typedef int dma_addr_t ;
typedef int __le32 ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long const PAGE_MASK ;
 size_t PAGE_SIZE ;
 unsigned int QIB_PBC_LENGTH_MASK ;
 size_t QIB_USER_SDMA_EXP_HEADER_LENGTH ;
 size_t QIB_USER_SDMA_MIN_HEADER_LENGTH ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int copy_from_user (int *,scalar_t__,size_t) ;
 int dma_map_page (int *,struct page*,int ,size_t,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int * dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,int *,int ) ;
 int dma_unmap_page (int *,int ,size_t,int ) ;
 int * kmap (struct page*) ;
 struct qib_user_sdma_pkt* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct qib_user_sdma_pkt*) ;
 int kunmap (struct page*) ;
 unsigned int le32_to_cpu (int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int qib_user_sdma_free_pkt_list (int *,struct qib_user_sdma_queue*,struct list_head*) ;
 int qib_user_sdma_init_header (struct qib_user_sdma_pkt*,int ,int ,size_t,int,struct page*,int *,int ) ;
 int qib_user_sdma_init_payload (struct qib_devdata const*,struct qib_user_sdma_queue*,struct qib_user_sdma_pkt*,struct iovec const*,int,int) ;

__attribute__((used)) static int qib_user_sdma_queue_pkts(const struct qib_devdata *dd,
        struct qib_user_sdma_queue *pq,
        struct list_head *list,
        const struct iovec *iov,
        unsigned long niov,
        int maxpkts)
{
 unsigned long idx = 0;
 int ret = 0;
 int npkts = 0;
 struct page *page = ((void*)0);
 __le32 *pbc;
 dma_addr_t dma_addr;
 struct qib_user_sdma_pkt *pkt = ((void*)0);
 size_t len;
 size_t nw;
 u32 counter = pq->counter;
 int dma_mapped = 0;

 while (idx < niov && npkts < maxpkts) {
  const unsigned long addr = (unsigned long) iov[idx].iov_base;
  const unsigned long idx_save = idx;
  unsigned pktnw;
  unsigned pktnwc;
  int nfrags = 0;
  int npages = 0;
  int cfur;

  dma_mapped = 0;
  len = iov[idx].iov_len;
  nw = len >> 2;
  page = ((void*)0);

  pkt = kmem_cache_alloc(pq->pkt_slab, GFP_KERNEL);
  if (!pkt) {
   ret = -ENOMEM;
   goto free_list;
  }

  if (len < QIB_USER_SDMA_MIN_HEADER_LENGTH ||
      len > PAGE_SIZE || len & 3 || addr & 3) {
   ret = -EINVAL;
   goto free_pkt;
  }

  if (len == QIB_USER_SDMA_EXP_HEADER_LENGTH)
   pbc = dma_pool_alloc(pq->header_cache, GFP_KERNEL,
          &dma_addr);
  else
   pbc = ((void*)0);

  if (!pbc) {
   page = alloc_page(GFP_KERNEL);
   if (!page) {
    ret = -ENOMEM;
    goto free_pkt;
   }
   pbc = kmap(page);
  }

  cfur = copy_from_user(pbc, iov[idx].iov_base, len);
  if (cfur) {
   ret = -EFAULT;
   goto free_pbc;
  }






  pktnwc = nw - 1;
  pktnw = le32_to_cpu(*pbc) & QIB_PBC_LENGTH_MASK;
  if (pktnw < pktnwc || pktnw > pktnwc + (PAGE_SIZE >> 2)) {
   ret = -EINVAL;
   goto free_pbc;
  }

  idx++;
  while (pktnwc < pktnw && idx < niov) {
   const size_t slen = iov[idx].iov_len;
   const unsigned long faddr =
    (unsigned long) iov[idx].iov_base;

   if (slen & 3 || faddr & 3 || !slen ||
       slen > PAGE_SIZE) {
    ret = -EINVAL;
    goto free_pbc;
   }

   npages++;
   if ((faddr & PAGE_MASK) !=
       ((faddr + slen - 1) & PAGE_MASK))
    npages++;

   pktnwc += slen >> 2;
   idx++;
   nfrags++;
  }

  if (pktnwc != pktnw) {
   ret = -EINVAL;
   goto free_pbc;
  }

  if (page) {
   dma_addr = dma_map_page(&dd->pcidev->dev,
      page, 0, len, DMA_TO_DEVICE);
   if (dma_mapping_error(&dd->pcidev->dev, dma_addr)) {
    ret = -ENOMEM;
    goto free_pbc;
   }

   dma_mapped = 1;
  }

  qib_user_sdma_init_header(pkt, counter, 0, len, dma_mapped,
       page, pbc, dma_addr);

  if (nfrags) {
   ret = qib_user_sdma_init_payload(dd, pq, pkt,
        iov + idx_save + 1,
        nfrags, npages);
   if (ret < 0)
    goto free_pbc_dma;
  }

  counter++;
  npkts++;

  list_add_tail(&pkt->list, list);
 }

 ret = idx;
 goto done;

free_pbc_dma:
 if (dma_mapped)
  dma_unmap_page(&dd->pcidev->dev, dma_addr, len, DMA_TO_DEVICE);
free_pbc:
 if (page) {
  kunmap(page);
  __free_page(page);
 } else
  dma_pool_free(pq->header_cache, pbc, dma_addr);
free_pkt:
 kmem_cache_free(pq->pkt_slab, pkt);
free_list:
 qib_user_sdma_free_pkt_list(&dd->pcidev->dev, pq, list);
done:
 return ret;
}
