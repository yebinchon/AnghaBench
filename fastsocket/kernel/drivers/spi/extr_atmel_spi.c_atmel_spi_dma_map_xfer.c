
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {void* rx_buf; int len; void* tx_dma; scalar_t__ tx_buf; void* rx_dma; } ;
struct device {int dummy; } ;
struct atmel_spi {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 void* INVALID_DMA_ADDRESS ;
 void* dma_map_single (struct device*,void*,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,void*) ;
 int dma_unmap_single (struct device*,void*,int ,int ) ;

__attribute__((used)) static int
atmel_spi_dma_map_xfer(struct atmel_spi *as, struct spi_transfer *xfer)
{
 struct device *dev = &as->pdev->dev;

 xfer->tx_dma = xfer->rx_dma = INVALID_DMA_ADDRESS;
 if (xfer->tx_buf) {
  xfer->tx_dma = dma_map_single(dev,
    (void *) xfer->tx_buf, xfer->len,
    DMA_TO_DEVICE);
  if (dma_mapping_error(dev, xfer->tx_dma))
   return -ENOMEM;
 }
 if (xfer->rx_buf) {
  xfer->rx_dma = dma_map_single(dev,
    xfer->rx_buf, xfer->len,
    DMA_FROM_DEVICE);
  if (dma_mapping_error(dev, xfer->rx_dma)) {
   if (xfer->tx_buf)
    dma_unmap_single(dev,
      xfer->tx_dma, xfer->len,
      DMA_TO_DEVICE);
   return -ENOMEM;
  }
 }
 return 0;
}
