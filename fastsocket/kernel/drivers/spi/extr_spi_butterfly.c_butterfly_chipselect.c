
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; } ;
struct butterfly {int port; } ;


 int BITBANG_CS_INACTIVE ;
 scalar_t__ PARPORT_CONTROL_INIT ;
 int SPI_CPOL ;
 int parport_frob_control (int ,scalar_t__,scalar_t__) ;
 int setsck (struct spi_device*,int) ;
 scalar_t__ spi_cs_bit ;
 struct butterfly* spidev_to_pp (struct spi_device*) ;

__attribute__((used)) static void butterfly_chipselect(struct spi_device *spi, int value)
{
 struct butterfly *pp = spidev_to_pp(spi);


 if (value != BITBANG_CS_INACTIVE)
  setsck(spi, spi->mode & SPI_CPOL);





 if (spi_cs_bit == PARPORT_CONTROL_INIT)
  value = !value;

 parport_frob_control(pp->port, spi_cs_bit, value ? spi_cs_bit : 0);
}
