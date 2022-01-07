
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;




 int flush_dcache_range (int ,size_t) ;
 int printk (char*,int) ;
 int printk_ratelimit () ;

void dma_sync_single_for_device(struct device *dev, dma_addr_t handle,
    size_t size, enum dma_data_direction dir)
{
 switch (dir) {
 case 128:
  flush_dcache_range(handle, size);
  break;
 case 129:

  break;
 default:
  if (printk_ratelimit())
   printk("dma_sync_single_for_device: unsupported dir %u\n", dir);
  break;
 }
}
