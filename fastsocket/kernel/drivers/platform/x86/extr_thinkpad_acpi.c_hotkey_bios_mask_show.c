
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int hotkey_orig_mask ;
 int printk_deprecated_attribute (char*,char*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t hotkey_bios_mask_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 printk_deprecated_attribute("hotkey_bios_mask",
   "This attribute is useless.");
 return snprintf(buf, PAGE_SIZE, "0x%08x\n", hotkey_orig_mask);
}
