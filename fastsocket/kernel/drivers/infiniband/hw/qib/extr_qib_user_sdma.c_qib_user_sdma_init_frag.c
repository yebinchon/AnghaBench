
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_user_sdma_pkt {TYPE_1__* addr; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {size_t offset; size_t length; int put_page; int dma_mapped; int addr; void* kvaddr; struct page* page; } ;



__attribute__((used)) static void qib_user_sdma_init_frag(struct qib_user_sdma_pkt *pkt,
        int i, size_t offset, size_t len,
        int put_page, int dma_mapped,
        struct page *page,
        void *kvaddr, dma_addr_t dma_addr)
{
 pkt->addr[i].offset = offset;
 pkt->addr[i].length = len;
 pkt->addr[i].put_page = put_page;
 pkt->addr[i].dma_mapped = dma_mapped;
 pkt->addr[i].page = page;
 pkt->addr[i].kvaddr = kvaddr;
 pkt->addr[i].addr = dma_addr;
}
