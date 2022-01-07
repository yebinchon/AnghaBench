
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct push_switch_platform_info {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {struct push_switch_platform_info* platform_data; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t switch_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct push_switch_platform_info *psw_info = dev->platform_data;
 return sprintf(buf, "%s\n", psw_info->name);
}
