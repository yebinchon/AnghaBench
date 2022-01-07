
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int chip_select; struct s3c24xx_spi_devstate* controller_state; } ;
struct s3c24xx_spi_devstate {int spcon; } ;
struct s3c24xx_spi {int pdata; int (* set_cs ) (int ,int ,unsigned int) ;scalar_t__ regs; } ;




 scalar_t__ S3C2410_SPCON ;
 int S3C2410_SPCON_ENSCK ;
 int SPI_CS_HIGH ;
 int stub1 (int ,int ,unsigned int) ;
 int stub2 (int ,int ,unsigned int) ;
 struct s3c24xx_spi* to_hw (struct spi_device*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void s3c24xx_spi_chipsel(struct spi_device *spi, int value)
{
 struct s3c24xx_spi_devstate *cs = spi->controller_state;
 struct s3c24xx_spi *hw = to_hw(spi);
 unsigned int cspol = spi->mode & SPI_CS_HIGH ? 1 : 0;



 switch (value) {
 case 128:
  hw->set_cs(hw->pdata, spi->chip_select, cspol^1);
  writeb(cs->spcon, hw->regs + S3C2410_SPCON);
  break;

 case 129:
  writeb(cs->spcon | S3C2410_SPCON_ENSCK,
         hw->regs + S3C2410_SPCON);
  hw->set_cs(hw->pdata, spi->chip_select, cspol);
  break;
 }
}
