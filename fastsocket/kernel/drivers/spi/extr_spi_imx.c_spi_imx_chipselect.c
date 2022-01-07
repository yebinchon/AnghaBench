
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {int* chipselect; } ;
struct spi_device {size_t chip_select; int mode; int master; } ;


 int BITBANG_CS_INACTIVE ;
 int SPI_CS_HIGH ;
 int gpio_set_value (int,int) ;
 struct spi_imx_data* spi_master_get_devdata (int ) ;

__attribute__((used)) static void spi_imx_chipselect(struct spi_device *spi, int is_active)
{
 struct spi_imx_data *spi_imx = spi_master_get_devdata(spi->master);
 int gpio = spi_imx->chipselect[spi->chip_select];
 int active = is_active != BITBANG_CS_INACTIVE;
 int dev_is_lowactive = !(spi->mode & SPI_CS_HIGH);

 if (gpio < 0)
  return;

 gpio_set_value(gpio, dev_is_lowactive ^ active);
}
