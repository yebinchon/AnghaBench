
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 scalar_t__ PAGE_SIZE ;
 size_t of_device_get_modalias (struct of_device*,char*,scalar_t__) ;
 struct of_device* to_of_device (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct of_device *ofdev = to_of_device(dev);
 ssize_t len = 0;

 len = of_device_get_modalias(ofdev, buf, PAGE_SIZE - 2);
 buf[len] = '\n';
 buf[len+1] = 0;
 return len+1;
}
