
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_entry {scalar_t__ type; int keycode; } ;
struct input_dev {int dummy; } ;


 int EINVAL ;
 scalar_t__ KE_KEY ;
 struct key_entry* dell_wmi_get_entry_by_scancode (int) ;

__attribute__((used)) static int dell_wmi_getkeycode(struct input_dev *dev, int scancode,
          int *keycode)
{
 struct key_entry *key = dell_wmi_get_entry_by_scancode(scancode);

 if (key && key->type == KE_KEY) {
  *keycode = key->keycode;
  return 0;
 }

 return -EINVAL;
}
