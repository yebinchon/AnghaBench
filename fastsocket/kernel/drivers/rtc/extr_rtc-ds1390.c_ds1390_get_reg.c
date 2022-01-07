
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct ds1390 {unsigned char* txrx_buf; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct ds1390* dev_get_drvdata (struct device*) ;
 int spi_write_then_read (struct spi_device*,unsigned char*,int,unsigned char*,int) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int ds1390_get_reg(struct device *dev, unsigned char address,
    unsigned char *data)
{
 struct spi_device *spi = to_spi_device(dev);
 struct ds1390 *chip = dev_get_drvdata(dev);
 int status;

 if (!data)
  return -EINVAL;


 chip->txrx_buf[0] = address & 0x7f;

 status = spi_write_then_read(spi, chip->txrx_buf, 1, chip->txrx_buf, 1);
 if (status != 0)
  return status;

 *data = chip->txrx_buf[1];

 return 0;
}
