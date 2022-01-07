
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_alloc; int image_update_ordernum; scalar_t__ bios_image_size; scalar_t__ image_update_buffer_size; int * image_update_buffer; } ;


 int dell_rbu_dmaaddr ;
 int dma_free_coherent (int *,scalar_t__,int *,int ) ;
 int free_pages (unsigned long,int) ;
 int memset (int *,int ,scalar_t__) ;
 TYPE_1__ rbu_data ;

__attribute__((used)) static void img_update_free(void)
{
 if (!rbu_data.image_update_buffer)
  return;




 memset(rbu_data.image_update_buffer, 0,
  rbu_data.image_update_buffer_size);
 if (rbu_data.dma_alloc == 1)
  dma_free_coherent(((void*)0), rbu_data.bios_image_size,
   rbu_data.image_update_buffer, dell_rbu_dmaaddr);
 else
  free_pages((unsigned long) rbu_data.image_update_buffer,
   rbu_data.image_update_ordernum);




 rbu_data.image_update_ordernum = -1;
 rbu_data.image_update_buffer = ((void*)0);
 rbu_data.image_update_buffer_size = 0;
 rbu_data.bios_image_size = 0;
 rbu_data.dma_alloc = 0;
}
