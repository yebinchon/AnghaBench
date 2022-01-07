
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_user_sdma_pkt {int naddr; int counter; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;


 int qib_user_sdma_init_frag (struct qib_user_sdma_pkt*,int ,size_t,size_t,int ,int,struct page*,void*,int ) ;

__attribute__((used)) static void qib_user_sdma_init_header(struct qib_user_sdma_pkt *pkt,
          u32 counter, size_t offset,
          size_t len, int dma_mapped,
          struct page *page,
          void *kvaddr, dma_addr_t dma_addr)
{
 pkt->naddr = 1;
 pkt->counter = counter;
 qib_user_sdma_init_frag(pkt, 0, offset, len, 0, dma_mapped, page,
    kvaddr, dma_addr);
}
