
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int type; } ;





 TYPE_1__* interface ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t show_interface(struct device *dev, struct device_attribute *attr,
 char *buf)
{
 switch (interface->type) {
 case 130:
  return sprintf(buf, "AMW0\n");
 case 129:
  return sprintf(buf, "AMW0 v2\n");
 case 128:
  return sprintf(buf, "WMID\n");
 default:
  return sprintf(buf, "Error!\n");
 }
}
