
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct driver_data {scalar_t__ dma_mapped; int tx_map_len; int tx_dma; int rx_map_len; int rx_dma; TYPE_2__* cur_msg; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* spi; int is_dma_mapped; } ;
struct TYPE_3__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;

__attribute__((used)) static void unmap_dma_buffers(struct driver_data *drv_data)
{
 struct device *dev;

 if (!drv_data->dma_mapped)
  return;

 if (!drv_data->cur_msg->is_dma_mapped) {
  dev = &drv_data->cur_msg->spi->dev;
  dma_unmap_single(dev, drv_data->rx_dma,
     drv_data->rx_map_len, DMA_FROM_DEVICE);
  dma_unmap_single(dev, drv_data->tx_dma,
     drv_data->tx_map_len, DMA_TO_DEVICE);
 }

 drv_data->dma_mapped = 0;
}
