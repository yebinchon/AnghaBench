
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm85_data {TYPE_1__* autofan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int config; } ;


 int ZONE_FROM_REG (int ) ;
 struct lm85_data* lm85_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_2__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm_enable(struct device *dev, struct device_attribute
  *attr, char *buf)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct lm85_data *data = lm85_update_device(dev);
 int pwm_zone, enable;

 pwm_zone = ZONE_FROM_REG(data->autofan[nr].config);
 switch (pwm_zone) {
 case -1:
  enable = 0;
  break;
 case 0:
 case -2:
  enable = 1;
  break;
 default:
  enable = 2;
 }
 return sprintf(buf, "%d\n", enable);
}
