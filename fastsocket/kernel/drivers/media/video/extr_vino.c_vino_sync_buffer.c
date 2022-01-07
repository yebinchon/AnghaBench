
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page_count; int * dma_cpu; } ;
struct vino_framebuffer {TYPE_1__ desc_table; } ;


 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 int VINO_PAGE_RATIO ;
 int dma_sync_single_for_cpu (int *,int ,int ,int ) ;
 int dprintk (char*) ;

__attribute__((used)) static void vino_sync_buffer(struct vino_framebuffer *fb)
{
 int i;

 dprintk("vino_sync_buffer():\n");

 for (i = 0; i < fb->desc_table.page_count; i++)
  dma_sync_single_for_cpu(((void*)0),
     fb->desc_table.dma_cpu[VINO_PAGE_RATIO * i],
     PAGE_SIZE, DMA_FROM_DEVICE);
}
