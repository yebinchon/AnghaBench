
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int master; } ;
struct mpc52xx_psc_spi {int (* cs_control ) (struct spi_device*,int) ;} ;


 int SPI_CS_HIGH ;
 struct mpc52xx_psc_spi* spi_master_get_devdata (int ) ;
 int stub1 (struct spi_device*,int) ;

__attribute__((used)) static void mpc52xx_psc_spi_deactivate_cs(struct spi_device *spi)
{
 struct mpc52xx_psc_spi *mps = spi_master_get_devdata(spi->master);

 if (mps->cs_control)
  mps->cs_control(spi, (spi->mode & SPI_CS_HIGH) ? 0 : 1);
}
