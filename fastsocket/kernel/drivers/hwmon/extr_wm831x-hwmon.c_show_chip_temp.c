
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm831x_hwmon {int wm831x; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 struct wm831x_hwmon* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int wm831x_auxadc_read (int ,int) ;

__attribute__((used)) static ssize_t show_chip_temp(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct wm831x_hwmon *hwmon = dev_get_drvdata(dev);
 int channel = to_sensor_dev_attr(attr)->index;
 int ret;

 ret = wm831x_auxadc_read(hwmon->wm831x, channel);
 if (ret < 0)
  return ret;


 ret = 512180 - (ret * 1000);
 ret = DIV_ROUND_CLOSEST(ret * 10000, 10983);

 return sprintf(buf, "%d\n", ret);
}
