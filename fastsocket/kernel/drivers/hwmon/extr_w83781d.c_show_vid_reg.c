
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83781d_data {int vrm; int vid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,long) ;
 scalar_t__ vid_from_reg (int ,int ) ;
 struct w83781d_data* w83781d_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_vid_reg(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w83781d_data *data = w83781d_update_device(dev);
 return sprintf(buf, "%ld\n", (long) vid_from_reg(data->vid, data->vrm));
}
