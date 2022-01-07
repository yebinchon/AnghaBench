
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {size_t chip_select; struct omap2_mcspi_cs* controller_state; int master; } ;
struct omap2_mcspi_dma {int dma_rx_channel; int dma_tx_channel; } ;
struct omap2_mcspi_cs {int node; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;


 int kfree (struct omap2_mcspi_cs*) ;
 int list_del (int *) ;
 int omap_free_dma (int) ;
 struct omap2_mcspi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void omap2_mcspi_cleanup(struct spi_device *spi)
{
 struct omap2_mcspi *mcspi;
 struct omap2_mcspi_dma *mcspi_dma;
 struct omap2_mcspi_cs *cs;

 mcspi = spi_master_get_devdata(spi->master);
 mcspi_dma = &mcspi->dma_channels[spi->chip_select];


 cs = spi->controller_state;
 list_del(&cs->node);

 kfree(spi->controller_state);

 if (mcspi_dma->dma_rx_channel != -1) {
  omap_free_dma(mcspi_dma->dma_rx_channel);
  mcspi_dma->dma_rx_channel = -1;
 }
 if (mcspi_dma->dma_tx_channel != -1) {
  omap_free_dma(mcspi_dma->dma_tx_channel);
  mcspi_dma->dma_tx_channel = -1;
 }
}
