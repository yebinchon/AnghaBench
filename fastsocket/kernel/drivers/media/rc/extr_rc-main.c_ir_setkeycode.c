
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_map {unsigned int len; int lock; } ;
struct rc_dev {struct rc_map rc_map; } ;
struct input_dev {int dummy; } ;


 int ENOMEM ;
 struct rc_dev* input_get_drvdata (struct input_dev*) ;
 unsigned int ir_establish_scancode (struct rc_dev*,struct rc_map*,int,int) ;
 int ir_update_mapping (struct rc_dev*,struct rc_map*,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ir_setkeycode(struct input_dev *idev,
    int scancode, int keycode)
{
 struct rc_dev *rdev = input_get_drvdata(idev);
 struct rc_map *rc_map = &rdev->rc_map;
 unsigned int index;
 int retval = 0;
 unsigned long flags;

 spin_lock_irqsave(&rc_map->lock, flags);

 index = ir_establish_scancode(rdev, rc_map, scancode, 1);
 if (index >= rc_map->len) {
  retval = -ENOMEM;
  goto out;
 }

 ir_update_mapping(rdev, rc_map, index, keycode);

out:
 spin_unlock_irqrestore(&rc_map->lock, flags);
 return retval;
}
