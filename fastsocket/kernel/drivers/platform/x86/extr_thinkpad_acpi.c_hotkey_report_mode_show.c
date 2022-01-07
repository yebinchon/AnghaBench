
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ hotkey_report_mode ;
 int snprintf (char*,int ,char*,scalar_t__) ;

__attribute__((used)) static ssize_t hotkey_report_mode_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d\n",
  (hotkey_report_mode != 0) ? hotkey_report_mode : 1);
}
