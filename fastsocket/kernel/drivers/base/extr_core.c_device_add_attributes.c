
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ attr_name (struct device_attribute) ;
 int device_create_file (struct device*,struct device_attribute*) ;
 int device_remove_file (struct device*,struct device_attribute*) ;

__attribute__((used)) static int device_add_attributes(struct device *dev,
     struct device_attribute *attrs)
{
 int error = 0;
 int i;

 if (attrs) {
  for (i = 0; attr_name(attrs[i]); i++) {
   error = device_create_file(dev, &attrs[i]);
   if (error)
    break;
  }
  if (error)
   while (--i >= 0)
    device_remove_file(dev, &attrs[i]);
 }
 return error;
}
