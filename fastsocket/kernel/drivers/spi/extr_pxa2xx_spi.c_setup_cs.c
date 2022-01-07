
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int dev; } ;
struct pxa2xx_spi_chip {int gpio_cs; scalar_t__ cs_control; } ;
struct chip_data {int gpio_cs_inverted; int gpio_cs; scalar_t__ cs_control; } ;


 int SPI_CS_HIGH ;
 int dev_err (int *,char*,int ) ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int setup_cs(struct spi_device *spi, struct chip_data *chip,
      struct pxa2xx_spi_chip *chip_info)
{
 int err = 0;

 if (chip == ((void*)0) || chip_info == ((void*)0))
  return 0;




 if (gpio_is_valid(chip->gpio_cs))
  gpio_free(chip->gpio_cs);


 if (chip_info->cs_control) {
  chip->cs_control = chip_info->cs_control;
  return 0;
 }

 if (gpio_is_valid(chip_info->gpio_cs)) {
  err = gpio_request(chip_info->gpio_cs, "SPI_CS");
  if (err) {
   dev_err(&spi->dev, "failed to request chip select "
     "GPIO%d\n", chip_info->gpio_cs);
   return err;
  }

  chip->gpio_cs = chip_info->gpio_cs;
  chip->gpio_cs_inverted = spi->mode & SPI_CS_HIGH;

  err = gpio_direction_output(chip->gpio_cs,
     !chip->gpio_cs_inverted);
 }

 return err;
}
