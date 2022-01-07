
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_message {scalar_t__ is_dma_mapped; TYPE_1__* spi; } ;
struct driver_data {int rx_map_len; int len; int tx_map_len; void* tx_dma; void* rx_dma; scalar_t__* rx; scalar_t__* tx; scalar_t__* null_dma_buf; TYPE_2__* cur_chip; struct spi_message* cur_msg; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int enable_dma; } ;
struct TYPE_3__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int IS_DMA_ALIGNED (scalar_t__*) ;
 void* dma_map_single (struct device*,scalar_t__*,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,void*) ;
 int dma_unmap_single (struct device*,void*,int,int ) ;

__attribute__((used)) static int map_dma_buffers(struct driver_data *drv_data)
{
 struct spi_message *msg = drv_data->cur_msg;
 struct device *dev = &msg->spi->dev;

 if (!drv_data->cur_chip->enable_dma)
  return 0;

 if (msg->is_dma_mapped)
  return drv_data->rx_dma && drv_data->tx_dma;

 if (!IS_DMA_ALIGNED(drv_data->rx) || !IS_DMA_ALIGNED(drv_data->tx))
  return 0;


 if (drv_data->rx == ((void*)0)) {
  *drv_data->null_dma_buf = 0;
  drv_data->rx = drv_data->null_dma_buf;
  drv_data->rx_map_len = 4;
 } else
  drv_data->rx_map_len = drv_data->len;



 if (drv_data->tx == ((void*)0)) {
  *drv_data->null_dma_buf = 0;
  drv_data->tx = drv_data->null_dma_buf;
  drv_data->tx_map_len = 4;
 } else
  drv_data->tx_map_len = drv_data->len;





 drv_data->tx_dma = dma_map_single(dev, drv_data->tx,
     drv_data->tx_map_len, DMA_TO_DEVICE);
 if (dma_mapping_error(dev, drv_data->tx_dma))
  return 0;


 drv_data->rx_dma = dma_map_single(dev, drv_data->rx,
     drv_data->rx_map_len, DMA_FROM_DEVICE);
 if (dma_mapping_error(dev, drv_data->rx_dma)) {
  dma_unmap_single(dev, drv_data->tx_dma,
     drv_data->tx_map_len, DMA_TO_DEVICE);
  return 0;
 }

 return 1;
}
