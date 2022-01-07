
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (unsigned char*) ;
 int spi_write (struct spi_device*,unsigned char*,int ) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int write_reg(struct device *dev, int address, unsigned char data)
{
 struct spi_device *spi = to_spi_device(dev);
 unsigned char buf[2];

 buf[0] = address & 0x7f;
 buf[1] = data;

 return spi_write(spi, buf, ARRAY_SIZE(buf));
}
