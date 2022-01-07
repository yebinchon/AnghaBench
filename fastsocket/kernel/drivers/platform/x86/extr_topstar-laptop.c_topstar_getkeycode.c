
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps_key_entry {int keycode; } ;
struct input_dev {int dummy; } ;


 int EINVAL ;
 struct tps_key_entry* tps_get_key_by_scancode (int) ;

__attribute__((used)) static int topstar_getkeycode(struct input_dev *dev, int scancode, int *keycode)
{
 struct tps_key_entry *key = tps_get_key_by_scancode(scancode);

 if (!key)
  return -EINVAL;

 *keycode = key->keycode;
 return 0;
}
