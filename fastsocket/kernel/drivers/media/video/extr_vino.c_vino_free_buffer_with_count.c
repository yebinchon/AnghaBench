
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page_count; scalar_t__* virtual; int dma; int * dma_cpu; } ;
struct vino_framebuffer {TYPE_1__ desc_table; } ;
typedef int dma_addr_t ;


 int ClearPageReserved (int ) ;
 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 unsigned int VINO_PAGE_RATIO ;
 int dma_free_coherent (int *,unsigned int,void*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int dprintk (char*,unsigned int) ;
 int free_page (scalar_t__) ;
 int kfree (scalar_t__*) ;
 int memset (struct vino_framebuffer*,int ,int) ;
 int virt_to_page (void*) ;

__attribute__((used)) static void vino_free_buffer_with_count(struct vino_framebuffer *fb,
            unsigned int count)
{
 unsigned int i;

 dprintk("vino_free_buffer_with_count(): count = %d\n", count);

 for (i = 0; i < count; i++) {
  ClearPageReserved(virt_to_page((void *)fb->desc_table.virtual[i]));
  dma_unmap_single(((void*)0),
     fb->desc_table.dma_cpu[VINO_PAGE_RATIO * i],
     PAGE_SIZE, DMA_FROM_DEVICE);
  free_page(fb->desc_table.virtual[i]);
 }

 dma_free_coherent(((void*)0),
     VINO_PAGE_RATIO * (fb->desc_table.page_count + 4) *
     sizeof(dma_addr_t), (void *)fb->desc_table.dma_cpu,
     fb->desc_table.dma);
 kfree(fb->desc_table.virtual);

 memset(fb, 0, sizeof(struct vino_framebuffer));
}
