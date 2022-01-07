
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_dev {TYPE_1__* adap; } ;
struct device_attribute {int dummy; } ;
struct device {int devt; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int ENODEV ;
 int MINOR (int ) ;
 struct i2c_dev* i2c_dev_get_by_minor (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_adapter_name(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct i2c_dev *i2c_dev = i2c_dev_get_by_minor(MINOR(dev->devt));

 if (!i2c_dev)
  return -ENODEV;
 return sprintf(buf, "%s\n", i2c_dev->adap->name);
}
