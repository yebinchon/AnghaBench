
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; scalar_t__ max_speed_hz; int dev; int master; } ;
struct au1550_spi {scalar_t__ freq_max; scalar_t__ freq_min; } ;


 int EINVAL ;
 int dev_err (int *,char*,int) ;
 struct au1550_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static int au1550_spi_setup(struct spi_device *spi)
{
 struct au1550_spi *hw = spi_master_get_devdata(spi->master);

 if (spi->bits_per_word < 4 || spi->bits_per_word > 24) {
  dev_err(&spi->dev, "setup: invalid bits_per_word=%d\n",
   spi->bits_per_word);
  return -EINVAL;
 }

 if (spi->max_speed_hz == 0)
  spi->max_speed_hz = hw->freq_max;
 if (spi->max_speed_hz > hw->freq_max
   || spi->max_speed_hz < hw->freq_min)
  return -EINVAL;





 return 0;
}
