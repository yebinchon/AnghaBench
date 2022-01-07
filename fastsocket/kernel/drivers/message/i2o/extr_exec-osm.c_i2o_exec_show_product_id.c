
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2o_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int i2o_parm_field_get (struct i2o_device*,int,int,int *,int) ;
 int le16_to_cpu (int ) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 struct i2o_device* to_i2o_device (struct device*) ;

__attribute__((used)) static ssize_t i2o_exec_show_product_id(struct device *d,
     struct device_attribute *attr,
     char *buf)
{
 struct i2o_device *dev = to_i2o_device(d);
 u16 id;

 if (!i2o_parm_field_get(dev, 0x0000, 1, &id, 2)) {
  sprintf(buf, "0x%04x", le16_to_cpu(id));
  return strlen(buf) + 1;
 }

 return 0;
}
