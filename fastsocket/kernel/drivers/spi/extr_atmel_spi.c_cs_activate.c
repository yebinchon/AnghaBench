
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_device {unsigned int mode; int chip_select; int dev; TYPE_1__* master; struct atmel_spi_device* controller_state; } ;
struct atmel_spi_device {int csr; int npcs_pin; } ;
struct atmel_spi {int dummy; } ;
struct TYPE_2__ {int num_chipselect; } ;


 int CPOL ;
 scalar_t__ CSR0 ;
 int MODFDIS ;
 scalar_t__ MR ;
 int MSTR ;
 int PCS ;
 int SPI_BF (int ,int) ;
 int SPI_BFINS (int ,int,int) ;
 int SPI_BIT (int ) ;
 int SPI_CPOL ;
 unsigned int SPI_CS_HIGH ;
 scalar_t__ atmel_spi_is_v2 () ;
 int dev_dbg (int *,char*,int ,char*,int) ;
 int gpio_set_value (int ,unsigned int) ;
 int spi_readl (struct atmel_spi*,scalar_t__) ;
 int spi_writel (struct atmel_spi*,scalar_t__,int) ;

__attribute__((used)) static void cs_activate(struct atmel_spi *as, struct spi_device *spi)
{
 struct atmel_spi_device *asd = spi->controller_state;
 unsigned active = spi->mode & SPI_CS_HIGH;
 u32 mr;

 if (atmel_spi_is_v2()) {





  spi_writel(as, CSR0, asd->csr);
  spi_writel(as, MR, SPI_BF(PCS, 0x0e) | SPI_BIT(MODFDIS)
    | SPI_BIT(MSTR));
  mr = spi_readl(as, MR);
  gpio_set_value(asd->npcs_pin, active);
 } else {
  u32 cpol = (spi->mode & SPI_CPOL) ? SPI_BIT(CPOL) : 0;
  int i;
  u32 csr;


  for (i = 0; i < spi->master->num_chipselect; i++) {
   csr = spi_readl(as, CSR0 + 4 * i);
   if ((csr ^ cpol) & SPI_BIT(CPOL))
    spi_writel(as, CSR0 + 4 * i,
      csr ^ SPI_BIT(CPOL));
  }

  mr = spi_readl(as, MR);
  mr = SPI_BFINS(PCS, ~(1 << spi->chip_select), mr);
  if (spi->chip_select != 0)
   gpio_set_value(asd->npcs_pin, active);
  spi_writel(as, MR, mr);
 }

 dev_dbg(&spi->dev, "activate %u%s, mr %08x\n",
   asd->npcs_pin, active ? " (high)" : "",
   mr);
}
