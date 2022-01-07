
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct crypto4xx_device {int scatter_buffer_size; scalar_t__ scatter_buffer_pa; struct ce_sd* sdr; scalar_t__ sdr_pa; TYPE_1__* core_dev; void* scatter_buffer_va; } ;
struct ce_sd {scalar_t__ ptr; } ;
struct TYPE_2__ {int device; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int PPC4XX_NUM_SD ;
 int PPC4XX_SD_BUFFER_SIZE ;
 void* dma_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int dma_free_coherent (int ,int,struct ce_sd*,scalar_t__) ;

__attribute__((used)) static u32 crypto4xx_build_sdr(struct crypto4xx_device *dev)
{
 int i;
 struct ce_sd *sd_array;


 dev->sdr = dma_alloc_coherent(dev->core_dev->device,
          sizeof(struct ce_sd) * PPC4XX_NUM_SD,
          &dev->sdr_pa, GFP_ATOMIC);
 if (!dev->sdr)
  return -ENOMEM;

 dev->scatter_buffer_size = PPC4XX_SD_BUFFER_SIZE;
 dev->scatter_buffer_va =
  dma_alloc_coherent(dev->core_dev->device,
   dev->scatter_buffer_size * PPC4XX_NUM_SD,
   &dev->scatter_buffer_pa, GFP_ATOMIC);
 if (!dev->scatter_buffer_va) {
  dma_free_coherent(dev->core_dev->device,
      sizeof(struct ce_sd) * PPC4XX_NUM_SD,
      dev->sdr, dev->sdr_pa);
  return -ENOMEM;
 }

 sd_array = dev->sdr;

 for (i = 0; i < PPC4XX_NUM_SD; i++) {
  sd_array[i].ptr = dev->scatter_buffer_pa +
      dev->scatter_buffer_size * i;
 }

 return 0;
}
