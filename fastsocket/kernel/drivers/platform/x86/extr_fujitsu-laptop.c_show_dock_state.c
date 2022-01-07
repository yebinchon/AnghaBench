
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int rfkill_supported; int rfkill_state; } ;


 TYPE_1__* fujitsu_hotkey ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t
show_dock_state(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 if (!(fujitsu_hotkey->rfkill_supported & 0x200))
  return sprintf(buf, "unknown\n");
 if (fujitsu_hotkey->rfkill_state & 0x200)
  return sprintf(buf, "docked\n");
 else
  return sprintf(buf, "undocked\n");
}
