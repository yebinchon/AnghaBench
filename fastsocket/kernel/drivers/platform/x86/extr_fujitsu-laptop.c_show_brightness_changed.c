
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int brightness_changed; } ;


 TYPE_1__* fujitsu ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
show_brightness_changed(struct device *dev,
   struct device_attribute *attr, char *buf)
{

 int ret;

 ret = fujitsu->brightness_changed;
 if (ret < 0)
  return ret;

 return sprintf(buf, "%i\n", ret);
}
