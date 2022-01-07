
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto4xx_device {int scatter_buffer_size; int scatter_buffer_pa; int * scatter_buffer_va; TYPE_1__* core_dev; int sdr_pa; int * sdr; } ;
struct ce_sd {int dummy; } ;
struct TYPE_2__ {int device; } ;


 int PPC4XX_NUM_SD ;
 int dma_free_coherent (int ,int,int *,int ) ;

__attribute__((used)) static void crypto4xx_destroy_sdr(struct crypto4xx_device *dev)
{
 if (dev->sdr != ((void*)0))
  dma_free_coherent(dev->core_dev->device,
      sizeof(struct ce_sd) * PPC4XX_NUM_SD,
      dev->sdr, dev->sdr_pa);

 if (dev->scatter_buffer_va != ((void*)0))
  dma_free_coherent(dev->core_dev->device,
      dev->scatter_buffer_size * PPC4XX_NUM_SD,
      dev->scatter_buffer_va,
      dev->scatter_buffer_pa);
}
