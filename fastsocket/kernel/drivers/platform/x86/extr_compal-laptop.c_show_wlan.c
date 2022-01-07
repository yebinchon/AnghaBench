
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int get_wireless_state (int*,int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_wlan(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 int ret, enabled;

 ret = get_wireless_state(&enabled, ((void*)0));
 if (ret < 0)
  return ret;

 return sprintf(buf, "%i\n", enabled);
}
