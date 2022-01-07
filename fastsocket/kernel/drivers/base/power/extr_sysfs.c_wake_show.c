
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ device_can_wakeup (struct device*) ;
 scalar_t__ device_may_wakeup (struct device*) ;
 char* disabled ;
 char* enabled ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t
wake_show(struct device * dev, struct device_attribute *attr, char * buf)
{
 return sprintf(buf, "%s\n", device_can_wakeup(dev)
  ? (device_may_wakeup(dev) ? enabled : disabled)
  : "");
}
