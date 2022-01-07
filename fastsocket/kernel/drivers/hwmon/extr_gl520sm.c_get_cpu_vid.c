
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl520_data {int vrm; int vid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct gl520_data* gl520_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 int vid_from_reg (int ,int ) ;

__attribute__((used)) static ssize_t get_cpu_vid(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct gl520_data *data = gl520_update_device(dev);
 return sprintf(buf, "%u\n", vid_from_reg(data->vid, data->vrm));
}
