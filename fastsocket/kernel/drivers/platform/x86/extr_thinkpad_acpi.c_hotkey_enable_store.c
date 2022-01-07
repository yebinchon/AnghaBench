
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EPERM ;
 scalar_t__ parse_strtoul (char const*,int,unsigned long*) ;
 int printk_deprecated_attribute (char*,char*) ;

__attribute__((used)) static ssize_t hotkey_enable_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 unsigned long t;

 printk_deprecated_attribute("hotkey_enable",
   "Hotkeys can be disabled through hotkey_mask");

 if (parse_strtoul(buf, 1, &t))
  return -EINVAL;

 if (t == 0)
  return -EPERM;

 return count;
}
