
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct TYPE_3__ {int keycode; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* dm355evm_keys ;

__attribute__((used)) static int dm355evm_getkeycode(struct input_dev *dev, int index, int *keycode)
{
 if (((unsigned)index) >= ARRAY_SIZE(dm355evm_keys))
  return -EINVAL;

 return dm355evm_keys[index].keycode;
}
