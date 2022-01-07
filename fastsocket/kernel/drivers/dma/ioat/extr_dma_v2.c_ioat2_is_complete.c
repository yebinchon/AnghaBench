
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ioatdma_device {int (* cleanup_tasklet ) (unsigned long) ;} ;
struct TYPE_2__ {struct ioatdma_device* device; } ;
struct ioat2_dma_chan {TYPE_1__ base; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 scalar_t__ DMA_SUCCESS ;
 int ioat_is_complete (struct dma_chan*,int ,int *,int *) ;
 int stub1 (unsigned long) ;
 struct ioat2_dma_chan* to_ioat2_chan (struct dma_chan*) ;

enum dma_status
ioat2_is_complete(struct dma_chan *c, dma_cookie_t cookie,
       dma_cookie_t *done, dma_cookie_t *used)
{
 struct ioat2_dma_chan *ioat = to_ioat2_chan(c);
 struct ioatdma_device *device = ioat->base.device;

 if (ioat_is_complete(c, cookie, done, used) == DMA_SUCCESS)
  return DMA_SUCCESS;

 device->cleanup_tasklet((unsigned long) ioat);

 return ioat_is_complete(c, cookie, done, used);
}
