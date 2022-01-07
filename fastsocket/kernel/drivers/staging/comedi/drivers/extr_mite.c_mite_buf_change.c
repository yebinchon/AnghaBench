
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mite_dma_descriptor_ring {int n_links; int descriptors_dma_addr; TYPE_2__* descriptors; int hw_dev; } ;
struct mite_dma_descriptor {int dummy; } ;
struct comedi_async {unsigned int prealloc_bufsz; TYPE_1__* buf_page_list; } ;
struct TYPE_5__ {void* next; void* addr; void* count; } ;
struct TYPE_4__ {int dma_addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MDPRINTK (char*,int ,unsigned int) ;
 unsigned int PAGE_SHIFT ;
 int PAGE_SIZE ;
 void* cpu_to_le32 (int ) ;
 TYPE_2__* dma_alloc_coherent (int ,unsigned int,int *,int ) ;
 int dma_free_coherent (int ,int,TYPE_2__*,int ) ;
 int printk (char*) ;
 int smp_wmb () ;

int mite_buf_change(struct mite_dma_descriptor_ring *ring,
      struct comedi_async *async)
{
 unsigned int n_links;
 int i;

 if (ring->descriptors) {
  dma_free_coherent(ring->hw_dev,
      ring->n_links *
      sizeof(struct mite_dma_descriptor),
      ring->descriptors,
      ring->descriptors_dma_addr);
 }
 ring->descriptors = ((void*)0);
 ring->descriptors_dma_addr = 0;
 ring->n_links = 0;

 if (async->prealloc_bufsz == 0)
  return 0;

 n_links = async->prealloc_bufsz >> PAGE_SHIFT;

 MDPRINTK("ring->hw_dev=%p, n_links=0x%04x\n", ring->hw_dev, n_links);

 ring->descriptors =
     dma_alloc_coherent(ring->hw_dev,
          n_links * sizeof(struct mite_dma_descriptor),
          &ring->descriptors_dma_addr, GFP_KERNEL);
 if (!ring->descriptors) {
  printk("mite: ring buffer allocation failed\n");
  return -ENOMEM;
 }
 ring->n_links = n_links;

 for (i = 0; i < n_links; i++) {
  ring->descriptors[i].count = cpu_to_le32(PAGE_SIZE);
  ring->descriptors[i].addr =
      cpu_to_le32(async->buf_page_list[i].dma_addr);
  ring->descriptors[i].next =
      cpu_to_le32(ring->descriptors_dma_addr + (i +
             1) *
    sizeof(struct mite_dma_descriptor));
 }
 ring->descriptors[n_links - 1].next =
     cpu_to_le32(ring->descriptors_dma_addr);


 smp_wmb();
 return 0;
}
