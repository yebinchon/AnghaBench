
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adcxx {unsigned long reference; int lock; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ERESTARTSYS ;
 struct adcxx* dev_get_drvdata (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static ssize_t adcxx_set_max(struct device *dev,
 struct device_attribute *devattr, const char *buf, size_t count)
{
 struct spi_device *spi = to_spi_device(dev);
 struct adcxx *adc = dev_get_drvdata(&spi->dev);
 unsigned long value;

 if (strict_strtoul(buf, 10, &value))
  return -EINVAL;

 if (mutex_lock_interruptible(&adc->lock))
  return -ERESTARTSYS;

 adc->reference = value;

 mutex_unlock(&adc->lock);

 return count;
}
