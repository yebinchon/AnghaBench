
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int line; } ;
struct mpsc_port_info {scalar_t__ dma_region_p; int * dma_region; TYPE_1__ port; } ;
typedef scalar_t__ dma_addr_t ;


 int MPSC_DMA_ALLOC_SIZE ;
 int dma_free_noncoherent (int ,int ,int *,scalar_t__) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void mpsc_free_ring_mem(struct mpsc_port_info *pi)
{
 pr_debug("mpsc_free_ring_mem[%d]: Freeing ring mem\n", pi->port.line);

 if (pi->dma_region) {
  dma_free_noncoherent(pi->port.dev, MPSC_DMA_ALLOC_SIZE,
    pi->dma_region, pi->dma_region_p);
  pi->dma_region = ((void*)0);
  pi->dma_region_p = (dma_addr_t)((void*)0);
 }
}
