
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt1211_data {int alarms; int * in_max; int * in_min; int * in; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IN_FROM_REG (int,int ) ;




 int* bitalarmin ;
 int dev_dbg (struct device*,char*,int) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct vt1211_data* vt1211_update_device (struct device*) ;

__attribute__((used)) static ssize_t show_in(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct vt1211_data *data = vt1211_update_device(dev);
 struct sensor_device_attribute_2 *sensor_attr_2 =
      to_sensor_dev_attr_2(attr);
 int ix = sensor_attr_2->index;
 int fn = sensor_attr_2->nr;
 int res;

 switch (fn) {
 case 130:
  res = IN_FROM_REG(ix, data->in[ix]);
  break;
 case 128:
  res = IN_FROM_REG(ix, data->in_min[ix]);
  break;
 case 129:
  res = IN_FROM_REG(ix, data->in_max[ix]);
  break;
 case 131:
  res = (data->alarms >> bitalarmin[ix]) & 1;
  break;
 default:
  res = 0;
  dev_dbg(dev, "Unknown attr fetch (%d)\n", fn);
 }

 return sprintf(buf, "%d\n", res);
}
