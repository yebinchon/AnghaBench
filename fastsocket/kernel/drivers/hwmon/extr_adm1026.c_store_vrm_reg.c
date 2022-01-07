
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int vrm; } ;
typedef size_t ssize_t ;


 struct adm1026_data* dev_get_drvdata (struct device*) ;
 int simple_strtol (char const*,int *,int) ;

__attribute__((used)) static ssize_t store_vrm_reg(struct device *dev, struct device_attribute *attr, const char *buf,
  size_t count)
{
 struct adm1026_data *data = dev_get_drvdata(dev);

 data->vrm = simple_strtol(buf, ((void*)0), 10);
 return count;
}
