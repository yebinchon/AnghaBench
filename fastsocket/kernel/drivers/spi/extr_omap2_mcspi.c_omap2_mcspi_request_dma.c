
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct spi_device {int chip_select; int dev; struct spi_master* master; } ;
struct omap2_mcspi_dma {int dma_rx_channel; int dma_tx_channel; int dma_tx_completion; int dma_rx_completion; int dma_tx_sync_dev; int dma_rx_sync_dev; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;


 int EAGAIN ;
 int dev_err (int *,char*) ;
 int init_completion (int *) ;
 int omap2_mcspi_dma_rx_callback ;
 int omap2_mcspi_dma_tx_callback ;
 int omap_free_dma (int) ;
 scalar_t__ omap_request_dma (int ,char*,int ,struct spi_device*,int*) ;
 struct omap2_mcspi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int omap2_mcspi_request_dma(struct spi_device *spi)
{
 struct spi_master *master = spi->master;
 struct omap2_mcspi *mcspi;
 struct omap2_mcspi_dma *mcspi_dma;

 mcspi = spi_master_get_devdata(master);
 mcspi_dma = mcspi->dma_channels + spi->chip_select;

 if (omap_request_dma(mcspi_dma->dma_rx_sync_dev, "McSPI RX",
   omap2_mcspi_dma_rx_callback, spi,
   &mcspi_dma->dma_rx_channel)) {
  dev_err(&spi->dev, "no RX DMA channel for McSPI\n");
  return -EAGAIN;
 }

 if (omap_request_dma(mcspi_dma->dma_tx_sync_dev, "McSPI TX",
   omap2_mcspi_dma_tx_callback, spi,
   &mcspi_dma->dma_tx_channel)) {
  omap_free_dma(mcspi_dma->dma_rx_channel);
  mcspi_dma->dma_rx_channel = -1;
  dev_err(&spi->dev, "no TX DMA channel for McSPI\n");
  return -EAGAIN;
 }

 init_completion(&mcspi_dma->dma_rx_completion);
 init_completion(&mcspi_dma->dma_tx_completion);

 return 0;
}
