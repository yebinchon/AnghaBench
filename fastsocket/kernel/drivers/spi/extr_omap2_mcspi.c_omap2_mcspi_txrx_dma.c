
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef void* u32 ;
typedef void* u16 ;
struct spi_transfer {unsigned int len; unsigned long tx_dma; unsigned long rx_dma; void** rx_buf; void** tx_buf; } ;
struct spi_device {size_t chip_select; int dev; int master; struct omap2_mcspi_cs* controller_state; } ;
struct omap2_mcspi_dma {int dma_rx_completion; int dma_tx_completion; int dma_rx_channel; int dma_tx_channel; int dma_rx_sync_dev; int dma_tx_sync_dev; } ;
struct omap2_mcspi_cs {int word_len; unsigned long phys; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 unsigned long OMAP2_MCSPI_CHSTAT0 ;
 int OMAP2_MCSPI_CHSTAT_RXS ;
 unsigned long OMAP2_MCSPI_RX0 ;
 unsigned long OMAP2_MCSPI_TX0 ;
 int OMAP_DMA_AMODE_CONSTANT ;
 int OMAP_DMA_AMODE_POST_INC ;
 int OMAP_DMA_DATA_TYPE_S16 ;
 int OMAP_DMA_DATA_TYPE_S32 ;
 int OMAP_DMA_DATA_TYPE_S8 ;
 int OMAP_DMA_SYNC_ELEMENT ;
 int dev_err (int *,char*) ;
 int dma_unmap_single (int *,unsigned long,unsigned int,int ) ;
 scalar_t__ likely (int) ;
 int mcspi_read_cs_reg (struct spi_device*,unsigned long) ;
 int omap2_mcspi_set_dma_req (struct spi_device*,int,int) ;
 int omap2_mcspi_set_enable (struct spi_device*,int) ;
 int omap_set_dma_dest_params (int ,int ,int ,unsigned long,int ,int ) ;
 int omap_set_dma_src_params (int ,int ,int ,unsigned long,int ,int ) ;
 int omap_set_dma_transfer_params (int ,int,int,int,int ,int ,int) ;
 int omap_start_dma (int ) ;
 struct omap2_mcspi* spi_master_get_devdata (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static unsigned
omap2_mcspi_txrx_dma(struct spi_device *spi, struct spi_transfer *xfer)
{
 struct omap2_mcspi *mcspi;
 struct omap2_mcspi_cs *cs = spi->controller_state;
 struct omap2_mcspi_dma *mcspi_dma;
 unsigned int count, c;
 unsigned long base, tx_reg, rx_reg;
 int word_len, data_type, element_count;
 u8 * rx;
 const u8 * tx;

 mcspi = spi_master_get_devdata(spi->master);
 mcspi_dma = &mcspi->dma_channels[spi->chip_select];

 count = xfer->len;
 c = count;
 word_len = cs->word_len;

 base = cs->phys;
 tx_reg = base + OMAP2_MCSPI_TX0;
 rx_reg = base + OMAP2_MCSPI_RX0;
 rx = xfer->rx_buf;
 tx = xfer->tx_buf;

 if (word_len <= 8) {
  data_type = OMAP_DMA_DATA_TYPE_S8;
  element_count = count;
 } else if (word_len <= 16) {
  data_type = OMAP_DMA_DATA_TYPE_S16;
  element_count = count >> 1;
 } else {
  data_type = OMAP_DMA_DATA_TYPE_S32;
  element_count = count >> 2;
 }

 if (tx != ((void*)0)) {
  omap_set_dma_transfer_params(mcspi_dma->dma_tx_channel,
    data_type, element_count, 1,
    OMAP_DMA_SYNC_ELEMENT,
    mcspi_dma->dma_tx_sync_dev, 0);

  omap_set_dma_dest_params(mcspi_dma->dma_tx_channel, 0,
    OMAP_DMA_AMODE_CONSTANT,
    tx_reg, 0, 0);

  omap_set_dma_src_params(mcspi_dma->dma_tx_channel, 0,
    OMAP_DMA_AMODE_POST_INC,
    xfer->tx_dma, 0, 0);
 }

 if (rx != ((void*)0)) {
  omap_set_dma_transfer_params(mcspi_dma->dma_rx_channel,
    data_type, element_count - 1, 1,
    OMAP_DMA_SYNC_ELEMENT,
    mcspi_dma->dma_rx_sync_dev, 1);

  omap_set_dma_src_params(mcspi_dma->dma_rx_channel, 0,
    OMAP_DMA_AMODE_CONSTANT,
    rx_reg, 0, 0);

  omap_set_dma_dest_params(mcspi_dma->dma_rx_channel, 0,
    OMAP_DMA_AMODE_POST_INC,
    xfer->rx_dma, 0, 0);
 }

 if (tx != ((void*)0)) {
  omap_start_dma(mcspi_dma->dma_tx_channel);
  omap2_mcspi_set_dma_req(spi, 0, 1);
 }

 if (rx != ((void*)0)) {
  omap_start_dma(mcspi_dma->dma_rx_channel);
  omap2_mcspi_set_dma_req(spi, 1, 1);
 }

 if (tx != ((void*)0)) {
  wait_for_completion(&mcspi_dma->dma_tx_completion);
  dma_unmap_single(((void*)0), xfer->tx_dma, count, DMA_TO_DEVICE);
 }

 if (rx != ((void*)0)) {
  wait_for_completion(&mcspi_dma->dma_rx_completion);
  dma_unmap_single(((void*)0), xfer->rx_dma, count, DMA_FROM_DEVICE);
  omap2_mcspi_set_enable(spi, 0);
  if (likely(mcspi_read_cs_reg(spi, OMAP2_MCSPI_CHSTAT0)
    & OMAP2_MCSPI_CHSTAT_RXS)) {
   u32 w;

   w = mcspi_read_cs_reg(spi, OMAP2_MCSPI_RX0);
   if (word_len <= 8)
    ((u8 *)xfer->rx_buf)[element_count - 1] = w;
   else if (word_len <= 16)
    ((u16 *)xfer->rx_buf)[element_count - 1] = w;
   else
    ((u32 *)xfer->rx_buf)[element_count - 1] = w;
  } else {
   dev_err(&spi->dev, "DMA RX last word empty");
   count -= (word_len <= 8) ? 1 :
     (word_len <= 16) ? 2 :
                               4;
  }
  omap2_mcspi_set_enable(spi, 1);
 }
 return count;
}
