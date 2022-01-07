
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_map {unsigned int len; int lock; TYPE_1__* scan; } ;
struct rc_dev {struct rc_map rc_map; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int keycode; } ;


 int KEY_RESERVED ;
 struct rc_dev* input_get_drvdata (struct input_dev*) ;
 unsigned int ir_lookup_by_scancode (struct rc_map*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ir_getkeycode(struct input_dev *idev,
    int scancode, int *keycode)
{
 struct rc_dev *rdev = input_get_drvdata(idev);
 struct rc_map *rc_map = &rdev->rc_map;
 unsigned long flags;
 unsigned int index;
 int retval;

 spin_lock_irqsave(&rc_map->lock, flags);

 index = ir_lookup_by_scancode(rc_map, scancode);

 if (index >= rc_map->len) {
  *keycode = KEY_RESERVED;
  retval = 0;
  goto out;
 }

 *keycode = rc_map->scan[index].keycode;

 retval = 0;

out:
 spin_unlock_irqrestore(&rc_map->lock, flags);
 return retval;
}
