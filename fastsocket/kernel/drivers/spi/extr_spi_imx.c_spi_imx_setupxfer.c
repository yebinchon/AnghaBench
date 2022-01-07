
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int bits_per_word; scalar_t__ speed_hz; } ;
struct spi_imx_data {int (* config ) (struct spi_imx_data*,struct spi_imx_config*) ;int tx; int rx; int * chipselect; } ;
struct spi_imx_config {int bpw; scalar_t__ speed_hz; int cs; int mode; } ;
struct spi_device {int bits_per_word; size_t chip_select; scalar_t__ max_speed_hz; int mode; int master; } ;


 int BUG () ;
 int spi_imx_buf_rx_u16 ;
 int spi_imx_buf_rx_u32 ;
 int spi_imx_buf_rx_u8 ;
 int spi_imx_buf_tx_u16 ;
 int spi_imx_buf_tx_u32 ;
 int spi_imx_buf_tx_u8 ;
 struct spi_imx_data* spi_master_get_devdata (int ) ;
 int stub1 (struct spi_imx_data*,struct spi_imx_config*) ;

__attribute__((used)) static int spi_imx_setupxfer(struct spi_device *spi,
     struct spi_transfer *t)
{
 struct spi_imx_data *spi_imx = spi_master_get_devdata(spi->master);
 struct spi_imx_config config;

 config.bpw = t ? t->bits_per_word : spi->bits_per_word;
 config.speed_hz = t ? t->speed_hz : spi->max_speed_hz;
 config.mode = spi->mode;
 config.cs = spi_imx->chipselect[spi->chip_select];

 if (!config.speed_hz)
  config.speed_hz = spi->max_speed_hz;
 if (!config.bpw)
  config.bpw = spi->bits_per_word;
 if (!config.speed_hz)
  config.speed_hz = spi->max_speed_hz;


 if (config.bpw <= 8) {
  spi_imx->rx = spi_imx_buf_rx_u8;
  spi_imx->tx = spi_imx_buf_tx_u8;
 } else if (config.bpw <= 16) {
  spi_imx->rx = spi_imx_buf_rx_u16;
  spi_imx->tx = spi_imx_buf_tx_u16;
 } else if (config.bpw <= 32) {
  spi_imx->rx = spi_imx_buf_rx_u32;
  spi_imx->tx = spi_imx_buf_tx_u32;
 } else
  BUG();

 spi_imx->config(spi_imx, &config);

 return 0;
}
