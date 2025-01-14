
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct spi_transfer {scalar_t__ rx_dma; scalar_t__ len; scalar_t__ tx_dma; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_master {int dummy; } ;
struct atmel_spi {scalar_t__ buffer_dma; TYPE_1__* pdev; int buffer; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BUFFER_SIZE ;
 int DMA_TO_DEVICE ;
 int dma_sync_single_for_device (int *,scalar_t__,scalar_t__,int ) ;
 int memset (int ,int ,scalar_t__) ;
 struct atmel_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static void atmel_spi_next_xfer_data(struct spi_master *master,
    struct spi_transfer *xfer,
    dma_addr_t *tx_dma,
    dma_addr_t *rx_dma,
    u32 *plen)
{
 struct atmel_spi *as = spi_master_get_devdata(master);
 u32 len = *plen;


 if (xfer->rx_buf)
  *rx_dma = xfer->rx_dma + xfer->len - len;
 else {
  *rx_dma = as->buffer_dma;
  if (len > BUFFER_SIZE)
   len = BUFFER_SIZE;
 }
 if (xfer->tx_buf)
  *tx_dma = xfer->tx_dma + xfer->len - len;
 else {
  *tx_dma = as->buffer_dma;
  if (len > BUFFER_SIZE)
   len = BUFFER_SIZE;
  memset(as->buffer, 0, len);
  dma_sync_single_for_device(&as->pdev->dev,
    as->buffer_dma, len, DMA_TO_DEVICE);
 }

 *plen = len;
}
