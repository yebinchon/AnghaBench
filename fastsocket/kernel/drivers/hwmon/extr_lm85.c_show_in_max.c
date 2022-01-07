
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm85_data {int * in_max; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int INS_FROM_REG (int,int ) ;
 struct lm85_data* lm85_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_in_max(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct lm85_data *data = lm85_update_device(dev);
 return sprintf(buf, "%d\n", INS_FROM_REG(nr, data->in_max[nr]));
}
