
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_user_sdma_queue {int header_cache; } ;
struct ipath_user_sdma_pkt {TYPE_1__* addr; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int addr; scalar_t__ kvaddr; scalar_t__ page; scalar_t__ put_page; int length; scalar_t__ dma_mapped; } ;


 int DMA_TO_DEVICE ;
 int __free_page (scalar_t__) ;
 int dma_pool_free (int ,scalar_t__,int ) ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int kunmap (scalar_t__) ;
 int put_page (scalar_t__) ;

__attribute__((used)) static void ipath_user_sdma_free_pkt_frag(struct device *dev,
       struct ipath_user_sdma_queue *pq,
       struct ipath_user_sdma_pkt *pkt,
       int frag)
{
 const int i = frag;

 if (pkt->addr[i].page) {
  if (pkt->addr[i].dma_mapped)
   dma_unmap_page(dev,
           pkt->addr[i].addr,
           pkt->addr[i].length,
           DMA_TO_DEVICE);

  if (pkt->addr[i].kvaddr)
   kunmap(pkt->addr[i].page);

  if (pkt->addr[i].put_page)
   put_page(pkt->addr[i].page);
  else
   __free_page(pkt->addr[i].page);
 } else if (pkt->addr[i].kvaddr)

  dma_pool_free(pq->header_cache,
         pkt->addr[i].kvaddr, pkt->addr[i].addr);
}
