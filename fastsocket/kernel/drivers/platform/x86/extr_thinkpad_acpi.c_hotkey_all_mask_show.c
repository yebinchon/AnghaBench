
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int hotkey_all_mask ;
 int hotkey_source_mask ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t hotkey_all_mask_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 return snprintf(buf, PAGE_SIZE, "0x%08x\n",
    hotkey_all_mask | hotkey_source_mask);
}
