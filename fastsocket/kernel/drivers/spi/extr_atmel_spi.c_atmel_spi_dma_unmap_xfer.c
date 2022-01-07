
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {scalar_t__ tx_dma; scalar_t__ rx_dma; int len; } ;
struct TYPE_2__ {int parent; } ;
struct spi_master {TYPE_1__ dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ INVALID_DMA_ADDRESS ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void atmel_spi_dma_unmap_xfer(struct spi_master *master,
         struct spi_transfer *xfer)
{
 if (xfer->tx_dma != INVALID_DMA_ADDRESS)
  dma_unmap_single(master->dev.parent, xfer->tx_dma,
     xfer->len, DMA_TO_DEVICE);
 if (xfer->rx_dma != INVALID_DMA_ADDRESS)
  dma_unmap_single(master->dev.parent, xfer->rx_dma,
     xfer->len, DMA_FROM_DEVICE);
}
