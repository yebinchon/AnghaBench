
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct ssp_device {int clk; } ;
struct spi_device {int bits_per_word; int mode; int dev; int max_speed_hz; struct pxa2xx_spi_chip* controller_data; int master; } ;
struct pxa2xx_spi_chip {scalar_t__ enable_loopback; scalar_t__ rx_threshold; scalar_t__ tx_threshold; scalar_t__ timeout; } ;
struct driver_data {scalar_t__ ssp_type; TYPE_1__* master_info; struct ssp_device* ssp; } ;
struct chip_data {int gpio_cs; int cr1; int threshold; unsigned int cr0; int n_bytes; int bits_per_word; int write; int read; int dma_width; scalar_t__ enable_dma; int speed_hz; scalar_t__ dma_threshold; int dma_burst_size; scalar_t__ timeout; } ;
struct TYPE_2__ {scalar_t__ enable_dma; } ;


 int DCMD_BURST8 ;
 int DCMD_WIDTH1 ;
 int DCMD_WIDTH2 ;
 int DCMD_WIDTH4 ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PXA25x_SSP ;
 scalar_t__ RX_THRESH_DFLT ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 unsigned int SSCR0_DataSize (int) ;
 unsigned int SSCR0_EDSS ;
 unsigned int SSCR0_Motorola ;
 int SSCR0_SCR ;
 unsigned int SSCR0_SSE ;
 int SSCR1_LBM ;
 int SSCR1_RFT ;
 int SSCR1_RxTresh (scalar_t__) ;
 int SSCR1_SPH ;
 int SSCR1_SPO ;
 int SSCR1_TFT ;
 int SSCR1_TxTresh (scalar_t__) ;
 scalar_t__ TIMOUT_DFLT ;
 scalar_t__ TX_THRESH_DFLT ;
 int clk_get_rate (int ) ;
 int dev_dbg (int *,char*,int,char*) ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 struct chip_data* kzalloc (int,int ) ;
 scalar_t__ set_dma_burst_and_threshold (struct chip_data*,struct spi_device*,int,int *,scalar_t__*) ;
 int setup_cs (struct spi_device*,struct chip_data*,struct pxa2xx_spi_chip*) ;
 struct chip_data* spi_get_ctldata (struct spi_device*) ;
 struct driver_data* spi_master_get_devdata (int ) ;
 int spi_set_ctldata (struct spi_device*,struct chip_data*) ;
 unsigned int ssp_get_clk_div (struct ssp_device*,int ) ;
 int u16_reader ;
 int u16_writer ;
 int u32_reader ;
 int u32_writer ;
 int u8_reader ;
 int u8_writer ;

__attribute__((used)) static int setup(struct spi_device *spi)
{
 struct pxa2xx_spi_chip *chip_info = ((void*)0);
 struct chip_data *chip;
 struct driver_data *drv_data = spi_master_get_devdata(spi->master);
 struct ssp_device *ssp = drv_data->ssp;
 unsigned int clk_div;
 uint tx_thres = TX_THRESH_DFLT;
 uint rx_thres = RX_THRESH_DFLT;

 if (drv_data->ssp_type != PXA25x_SSP
  && (spi->bits_per_word < 4 || spi->bits_per_word > 32)) {
  dev_err(&spi->dev, "failed setup: ssp_type=%d, bits/wrd=%d "
    "b/w not 4-32 for type non-PXA25x_SSP\n",
    drv_data->ssp_type, spi->bits_per_word);
  return -EINVAL;
 }
 else if (drv_data->ssp_type == PXA25x_SSP
   && (spi->bits_per_word < 4
    || spi->bits_per_word > 16)) {
  dev_err(&spi->dev, "failed setup: ssp_type=%d, bits/wrd=%d "
    "b/w not 4-16 for type PXA25x_SSP\n",
    drv_data->ssp_type, spi->bits_per_word);
  return -EINVAL;
 }


 chip = spi_get_ctldata(spi);
 if (!chip) {
  chip = kzalloc(sizeof(struct chip_data), GFP_KERNEL);
  if (!chip) {
   dev_err(&spi->dev,
    "failed setup: can't allocate chip data\n");
   return -ENOMEM;
  }

  chip->gpio_cs = -1;
  chip->enable_dma = 0;
  chip->timeout = TIMOUT_DFLT;
  chip->dma_burst_size = drv_data->master_info->enable_dma ?
     DCMD_BURST8 : 0;
 }



 chip_info = spi->controller_data;


 chip->cr1 = 0;
 if (chip_info) {
  if (chip_info->timeout)
   chip->timeout = chip_info->timeout;
  if (chip_info->tx_threshold)
   tx_thres = chip_info->tx_threshold;
  if (chip_info->rx_threshold)
   rx_thres = chip_info->rx_threshold;
  chip->enable_dma = drv_data->master_info->enable_dma;
  chip->dma_threshold = 0;
  if (chip_info->enable_loopback)
   chip->cr1 = SSCR1_LBM;
 }

 chip->threshold = (SSCR1_RxTresh(rx_thres) & SSCR1_RFT) |
   (SSCR1_TxTresh(tx_thres) & SSCR1_TFT);




 if (chip->enable_dma) {

  if (set_dma_burst_and_threshold(chip, spi, spi->bits_per_word,
      &chip->dma_burst_size,
      &chip->dma_threshold)) {
   dev_warn(&spi->dev, "in setup: DMA burst size reduced "
     "to match bits_per_word\n");
  }
 }

 clk_div = ssp_get_clk_div(ssp, spi->max_speed_hz);
 chip->speed_hz = spi->max_speed_hz;

 chip->cr0 = clk_div
   | SSCR0_Motorola
   | SSCR0_DataSize(spi->bits_per_word > 16 ?
    spi->bits_per_word - 16 : spi->bits_per_word)
   | SSCR0_SSE
   | (spi->bits_per_word > 16 ? SSCR0_EDSS : 0);
 chip->cr1 &= ~(SSCR1_SPO | SSCR1_SPH);
 chip->cr1 |= (((spi->mode & SPI_CPHA) != 0) ? SSCR1_SPH : 0)
   | (((spi->mode & SPI_CPOL) != 0) ? SSCR1_SPO : 0);


 if (drv_data->ssp_type != PXA25x_SSP)
  dev_dbg(&spi->dev, "%ld Hz actual, %s\n",
    clk_get_rate(ssp->clk)
     / (1 + ((chip->cr0 & SSCR0_SCR) >> 8)),
    chip->enable_dma ? "DMA" : "PIO");
 else
  dev_dbg(&spi->dev, "%ld Hz actual, %s\n",
    clk_get_rate(ssp->clk) / 2
     / (1 + ((chip->cr0 & SSCR0_SCR) >> 8)),
    chip->enable_dma ? "DMA" : "PIO");

 if (spi->bits_per_word <= 8) {
  chip->n_bytes = 1;
  chip->dma_width = DCMD_WIDTH1;
  chip->read = u8_reader;
  chip->write = u8_writer;
 } else if (spi->bits_per_word <= 16) {
  chip->n_bytes = 2;
  chip->dma_width = DCMD_WIDTH2;
  chip->read = u16_reader;
  chip->write = u16_writer;
 } else if (spi->bits_per_word <= 32) {
  chip->cr0 |= SSCR0_EDSS;
  chip->n_bytes = 4;
  chip->dma_width = DCMD_WIDTH4;
  chip->read = u32_reader;
  chip->write = u32_writer;
 } else {
  dev_err(&spi->dev, "invalid wordsize\n");
  return -ENODEV;
 }
 chip->bits_per_word = spi->bits_per_word;

 spi_set_ctldata(spi, chip);

 return setup_cs(spi, chip, chip_info);
}
