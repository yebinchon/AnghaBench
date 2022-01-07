
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tid; } ;
struct i2o_device {TYPE_1__ lct_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int sprintf (char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 struct i2o_device* to_i2o_device (struct device*) ;

__attribute__((used)) static ssize_t i2o_device_show_tid(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct i2o_device *i2o_dev = to_i2o_device(dev);

 sprintf(buf, "0x%03x\n", i2o_dev->lct_data.tid);
 return strlen(buf) + 1;
}
