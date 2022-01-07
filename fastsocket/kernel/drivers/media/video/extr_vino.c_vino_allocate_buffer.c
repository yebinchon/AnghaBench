
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* virtual; unsigned int page_count; scalar_t__* dma_cpu; int dma; } ;
struct vino_framebuffer {unsigned int size; TYPE_1__ desc_table; int data_format; } ;
typedef scalar_t__ dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 unsigned int PAGE_SIZE ;
 int SetPageReserved (int ) ;
 int VINO_DATA_FMT_NONE ;
 scalar_t__ VINO_DESC_STOP ;
 unsigned int VINO_PAGE_RATIO ;
 unsigned int VINO_PAGE_SIZE ;
 scalar_t__* dma_alloc_coherent (int *,unsigned int,int *,int) ;
 scalar_t__ dma_map_single (int *,void*,unsigned int,int ) ;
 int dprintk (char*,...) ;
 unsigned long get_zeroed_page (int) ;
 int kfree (unsigned long*) ;
 scalar_t__ kmalloc (unsigned int,int) ;
 int memset (struct vino_framebuffer*,int ,int) ;
 int vino_free_buffer_with_count (struct vino_framebuffer*,unsigned int) ;
 int virt_to_page (void*) ;

__attribute__((used)) static int vino_allocate_buffer(struct vino_framebuffer *fb,
    unsigned int size)
{
 unsigned int count, i, j;
 int ret = 0;

 dprintk("vino_allocate_buffer():\n");

 if (size < 1)
  return -EINVAL;

 memset(fb, 0, sizeof(struct vino_framebuffer));

 count = ((size / PAGE_SIZE) + 4) & ~3;

 dprintk("vino_allocate_buffer(): size = %d, count = %d\n",
  size, count);


 fb->desc_table.virtual = (unsigned long *)
  kmalloc(count * sizeof(unsigned long), GFP_KERNEL);
 if (!fb->desc_table.virtual)
  return -ENOMEM;



 fb->desc_table.dma_cpu =
  dma_alloc_coherent(((void*)0), VINO_PAGE_RATIO * (count + 4) *
       sizeof(dma_addr_t), &fb->desc_table.dma,
       GFP_KERNEL | GFP_DMA);
 if (!fb->desc_table.dma_cpu) {
  ret = -ENOMEM;
  goto out_free_virtual;
 }



 for (i = 0; i < count; i++) {
  dma_addr_t dma_data_addr;

  fb->desc_table.virtual[i] =
   get_zeroed_page(GFP_KERNEL | GFP_DMA);
  if (!fb->desc_table.virtual[i]) {
   ret = -ENOBUFS;
   break;
  }

  dma_data_addr =
   dma_map_single(((void*)0),
           (void *)fb->desc_table.virtual[i],
           PAGE_SIZE, DMA_FROM_DEVICE);

  for (j = 0; j < VINO_PAGE_RATIO; j++) {
   fb->desc_table.dma_cpu[VINO_PAGE_RATIO * i + j] =
    dma_data_addr + VINO_PAGE_SIZE * j;
  }

  SetPageReserved(virt_to_page((void *)fb->desc_table.virtual[i]));
 }



 fb->desc_table.page_count = count;

 if (ret) {


  vino_free_buffer_with_count(fb, i);
  return ret;
 }


 fb->size = count * PAGE_SIZE;
 fb->data_format = VINO_DATA_FMT_NONE;


 fb->desc_table.dma_cpu[VINO_PAGE_RATIO * count] = VINO_DESC_STOP;
 return 0;

 out_free_virtual:
 kfree(fb->desc_table.virtual);
 return ret;
}
