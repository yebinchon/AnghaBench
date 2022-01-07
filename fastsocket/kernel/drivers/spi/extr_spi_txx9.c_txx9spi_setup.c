
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct txx9spi {scalar_t__ max_speed_hz; scalar_t__ min_speed_hz; int lock; } ;
struct spi_device {scalar_t__ max_speed_hz; int bits_per_word; int mode; int dev; int chip_select; int master; } ;


 int EINVAL ;
 int NSEC_PER_SEC ;
 int SPI_CS_HIGH ;
 int dev_err (int *,char*) ;
 scalar_t__ gpio_direction_output (int ,int) ;
 struct txx9spi* spi_master_get_devdata (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int txx9spi_cs_func (struct spi_device*,struct txx9spi*,int ,int) ;

__attribute__((used)) static int txx9spi_setup(struct spi_device *spi)
{
 struct txx9spi *c = spi_master_get_devdata(spi->master);
 u8 bits_per_word;

 if (!spi->max_speed_hz
   || spi->max_speed_hz > c->max_speed_hz
   || spi->max_speed_hz < c->min_speed_hz)
  return -EINVAL;

 bits_per_word = spi->bits_per_word;
 if (bits_per_word != 8 && bits_per_word != 16)
  return -EINVAL;

 if (gpio_direction_output(spi->chip_select,
   !(spi->mode & SPI_CS_HIGH))) {
  dev_err(&spi->dev, "Cannot setup GPIO for chipselect.\n");
  return -EINVAL;
 }


 spin_lock(&c->lock);
 txx9spi_cs_func(spi, c, 0, (NSEC_PER_SEC / 2) / spi->max_speed_hz);
 spin_unlock(&c->lock);

 return 0;
}
