
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_spi_host {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; int mode; } ;


 int SPI_CS_HIGH ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int mmc_spi_readbytes (struct mmc_spi_host*,int) ;
 int mmc_spi_wait_unbusy (struct mmc_spi_host*,int ) ;
 int r1b_timeout ;
 scalar_t__ spi_setup (TYPE_1__*) ;

__attribute__((used)) static void mmc_spi_initsequence(struct mmc_spi_host *host)
{



 mmc_spi_wait_unbusy(host, r1b_timeout);
 mmc_spi_readbytes(host, 10);
 host->spi->mode |= SPI_CS_HIGH;
 if (spi_setup(host->spi) != 0) {

  dev_warn(&host->spi->dev,
    "can't change chip-select polarity\n");
  host->spi->mode &= ~SPI_CS_HIGH;
 } else {
  mmc_spi_readbytes(host, 18);

  host->spi->mode &= ~SPI_CS_HIGH;
  if (spi_setup(host->spi) != 0) {

   dev_err(&host->spi->dev,
     "can't restore chip-select polarity\n");
  }
 }
}
