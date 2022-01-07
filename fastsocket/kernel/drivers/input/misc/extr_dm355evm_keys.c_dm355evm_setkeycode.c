
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct input_dev {int keybit; } ;
struct TYPE_3__ {int keycode; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int clear_bit (int,int ) ;
 TYPE_1__* dm355evm_keys ;
 int set_bit (int,int ) ;

__attribute__((used)) static int dm355evm_setkeycode(struct input_dev *dev, int index, int keycode)
{
 u16 old_keycode;
 unsigned i;

 if (((unsigned)index) >= ARRAY_SIZE(dm355evm_keys))
  return -EINVAL;

 old_keycode = dm355evm_keys[index].keycode;
 dm355evm_keys[index].keycode = keycode;
 set_bit(keycode, dev->keybit);

 for (i = 0; i < ARRAY_SIZE(dm355evm_keys); i++) {
  if (dm355evm_keys[index].keycode == old_keycode)
   goto done;
 }
 clear_bit(old_keycode, dev->keybit);
done:
 return 0;
}
