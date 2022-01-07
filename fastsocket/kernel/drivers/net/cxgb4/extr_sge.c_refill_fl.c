
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_fl {unsigned int avail; size_t pidx; size_t size; unsigned int pend_cred; scalar_t__ cntxt_id; int * desc; struct rx_sw_desc* sdesc; int alloc_failed; int large_alloc_failed; } ;
struct rx_sw_desc {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int starving_fl; scalar_t__ egr_start; } ;
struct adapter {TYPE_1__ sge; int pdev_dev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
typedef int __be64 ;


 int FL_PG_ORDER ;
 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int RX_LARGE_BUF ;
 int __GFP_COLD ;
 int __GFP_COMP ;
 int __GFP_NOWARN ;
 int __free_pages (struct page*,int) ;
 struct page* alloc_page (int) ;
 struct page* alloc_pages (int,int) ;
 void* cpu_to_be64 (int ) ;
 int dma_map_page (int ,struct page*,int ,int,int ) ;
 int dma_mapping_error (int ,int ) ;
 int fl_starving (struct sge_fl*) ;
 int put_page (struct page*) ;
 int ring_fl_db (struct adapter*,struct sge_fl*) ;
 int set_bit (scalar_t__,int ) ;
 int set_rx_sw_desc (struct rx_sw_desc*,struct page*,int ) ;
 int smp_wmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int refill_fl(struct adapter *adap, struct sge_fl *q, int n,
         gfp_t gfp)
{
 struct page *pg;
 dma_addr_t mapping;
 unsigned int cred = q->avail;
 __be64 *d = &q->desc[q->pidx];
 struct rx_sw_desc *sd = &q->sdesc[q->pidx];

 gfp |= __GFP_NOWARN | __GFP_COLD;
 while (n--) {
  pg = alloc_page(gfp);
  if (unlikely(!pg)) {
   q->alloc_failed++;
   break;
  }

  mapping = dma_map_page(adap->pdev_dev, pg, 0, PAGE_SIZE,
           PCI_DMA_FROMDEVICE);
  if (unlikely(dma_mapping_error(adap->pdev_dev, mapping))) {
   put_page(pg);
   goto out;
  }
  *d++ = cpu_to_be64(mapping);

  set_rx_sw_desc(sd, pg, mapping);
  sd++;

  q->avail++;
  if (++q->pidx == q->size) {
   q->pidx = 0;
   sd = q->sdesc;
   d = q->desc;
  }
 }

out: cred = q->avail - cred;
 q->pend_cred += cred;
 ring_fl_db(adap, q);

 if (unlikely(fl_starving(q))) {
  smp_wmb();
  set_bit(q->cntxt_id - adap->sge.egr_start,
   adap->sge.starving_fl);
 }

 return cred;
}
