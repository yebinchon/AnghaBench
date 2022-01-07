
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adcxx {int channels; } ;
typedef int ssize_t ;


 struct adcxx* dev_get_drvdata (int *) ;
 int sprintf (char*,char*,int) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static ssize_t adcxx_show_name(struct device *dev, struct device_attribute
         *devattr, char *buf)
{
 struct spi_device *spi = to_spi_device(dev);
 struct adcxx *adc = dev_get_drvdata(&spi->dev);

 return sprintf(buf, "adcxx%ds\n", adc->channels);
}
