
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {char* modalias; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static ssize_t
modalias_show(struct device *dev, struct device_attribute *a, char *buf)
{
 const struct spi_device *spi = to_spi_device(dev);

 return sprintf(buf, "%s\n", spi->modalias);
}
