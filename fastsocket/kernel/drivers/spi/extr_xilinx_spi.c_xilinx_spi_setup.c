
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_bitbang {int dummy; } ;
struct xilinx_spi {struct spi_bitbang bitbang; } ;
struct spi_device {int master; } ;


 struct xilinx_spi* spi_master_get_devdata (int ) ;
 int xilinx_spi_setup_transfer (struct spi_device*,int *) ;

__attribute__((used)) static int xilinx_spi_setup(struct spi_device *spi)
{
 struct spi_bitbang *bitbang;
 struct xilinx_spi *xspi;
 int retval;

 xspi = spi_master_get_devdata(spi->master);
 bitbang = &xspi->bitbang;

 retval = xilinx_spi_setup_transfer(spi, ((void*)0));
 if (retval < 0)
  return retval;

 return 0;
}
