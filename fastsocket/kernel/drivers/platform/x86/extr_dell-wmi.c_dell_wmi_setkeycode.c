
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_entry {scalar_t__ type; int keycode; } ;
struct input_dev {int keybit; } ;


 int EINVAL ;
 int KEY_MAX ;
 scalar_t__ KE_KEY ;
 int clear_bit (int,int ) ;
 int dell_wmi_get_entry_by_keycode (int) ;
 struct key_entry* dell_wmi_get_entry_by_scancode (int) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int dell_wmi_setkeycode(struct input_dev *dev, int scancode, int keycode)
{
 struct key_entry *key;
 int old_keycode;

 if (keycode < 0 || keycode > KEY_MAX)
  return -EINVAL;

 key = dell_wmi_get_entry_by_scancode(scancode);
 if (key && key->type == KE_KEY) {
  old_keycode = key->keycode;
  key->keycode = keycode;
  set_bit(keycode, dev->keybit);
  if (!dell_wmi_get_entry_by_keycode(old_keycode))
   clear_bit(old_keycode, dev->keybit);
  return 0;
 }
 return -EINVAL;
}
