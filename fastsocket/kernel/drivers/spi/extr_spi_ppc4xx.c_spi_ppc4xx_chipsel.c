
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {unsigned int chip_select; int mode; int master; } ;
struct ppc4xx_spi {int * gpios; TYPE_1__* master; } ;
struct TYPE_2__ {int num_chipselect; } ;


 int BITBANG_CS_INACTIVE ;
 int EEXIST ;
 int SPI_CS_HIGH ;
 int gpio_set_value (int ,unsigned int) ;
 struct ppc4xx_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void spi_ppc4xx_chipsel(struct spi_device *spi, int value)
{
 struct ppc4xx_spi *hw = spi_master_get_devdata(spi->master);
 unsigned int cs = spi->chip_select;
 unsigned int cspol;






 if (!hw->master->num_chipselect || hw->gpios[cs] == -EEXIST)
  return;

 cspol = spi->mode & SPI_CS_HIGH ? 1 : 0;
 if (value == BITBANG_CS_INACTIVE)
  cspol = !cspol;

 gpio_set_value(hw->gpios[cs], cspol);
}
