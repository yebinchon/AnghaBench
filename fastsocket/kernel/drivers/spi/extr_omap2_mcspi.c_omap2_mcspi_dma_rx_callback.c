
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_device {size_t chip_select; int master; } ;
struct omap2_mcspi_dma {int dma_rx_completion; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;


 int complete (int *) ;
 int omap2_mcspi_set_dma_req (struct spi_device*,int,int ) ;
 struct omap2_mcspi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void omap2_mcspi_dma_rx_callback(int lch, u16 ch_status, void *data)
{
 struct spi_device *spi = data;
 struct omap2_mcspi *mcspi;
 struct omap2_mcspi_dma *mcspi_dma;

 mcspi = spi_master_get_devdata(spi->master);
 mcspi_dma = &(mcspi->dma_channels[spi->chip_select]);

 complete(&mcspi_dma->dma_rx_completion);


 omap2_mcspi_set_dma_req(spi, 1, 0);
}
