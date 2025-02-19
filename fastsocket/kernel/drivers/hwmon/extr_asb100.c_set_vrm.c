
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asb100_data {int vrm; } ;
typedef size_t ssize_t ;


 struct asb100_data* dev_get_drvdata (struct device*) ;
 int simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t set_vrm(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct asb100_data *data = dev_get_drvdata(dev);
 data->vrm = simple_strtoul(buf, ((void*)0), 10);
 return count;
}
