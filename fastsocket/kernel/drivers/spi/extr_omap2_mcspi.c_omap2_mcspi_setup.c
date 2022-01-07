
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int bits_per_word; size_t chip_select; struct omap2_mcspi_cs* controller_state; int master; int dev; } ;
struct omap2_mcspi_dma {int dma_rx_channel; int dma_tx_channel; } ;
struct omap2_mcspi_cs {int node; scalar_t__ chconf0; scalar_t__ phys; scalar_t__ base; } ;
struct omap2_mcspi {TYPE_1__* master; scalar_t__ phys; scalar_t__ base; struct omap2_mcspi_dma* dma_channels; } ;
struct TYPE_4__ {int cs; } ;
struct TYPE_3__ {int bus_num; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*,int) ;
 struct omap2_mcspi_cs* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 TYPE_2__* omap2_mcspi_ctx ;
 int omap2_mcspi_disable_clocks (struct omap2_mcspi*) ;
 scalar_t__ omap2_mcspi_enable_clocks (struct omap2_mcspi*) ;
 int omap2_mcspi_request_dma (struct spi_device*) ;
 int omap2_mcspi_setup_transfer (struct spi_device*,int *) ;
 struct omap2_mcspi* spi_master_get_devdata (int ) ;

__attribute__((used)) static int omap2_mcspi_setup(struct spi_device *spi)
{
 int ret;
 struct omap2_mcspi *mcspi;
 struct omap2_mcspi_dma *mcspi_dma;
 struct omap2_mcspi_cs *cs = spi->controller_state;

 if (spi->bits_per_word < 4 || spi->bits_per_word > 32) {
  dev_dbg(&spi->dev, "setup: unsupported %d bit words\n",
   spi->bits_per_word);
  return -EINVAL;
 }

 mcspi = spi_master_get_devdata(spi->master);
 mcspi_dma = &mcspi->dma_channels[spi->chip_select];

 if (!cs) {
  cs = kzalloc(sizeof *cs, GFP_KERNEL);
  if (!cs)
   return -ENOMEM;
  cs->base = mcspi->base + spi->chip_select * 0x14;
  cs->phys = mcspi->phys + spi->chip_select * 0x14;
  cs->chconf0 = 0;
  spi->controller_state = cs;

  list_add_tail(&cs->node,
   &omap2_mcspi_ctx[mcspi->master->bus_num - 1].cs);
 }

 if (mcspi_dma->dma_rx_channel == -1
   || mcspi_dma->dma_tx_channel == -1) {
  ret = omap2_mcspi_request_dma(spi);
  if (ret < 0)
   return ret;
 }

 if (omap2_mcspi_enable_clocks(mcspi))
  return -ENODEV;

 ret = omap2_mcspi_setup_transfer(spi, ((void*)0));
 omap2_mcspi_disable_clocks(mcspi);

 return ret;
}
