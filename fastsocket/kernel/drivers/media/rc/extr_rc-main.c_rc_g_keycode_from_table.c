
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct rc_map {unsigned int len; int lock; TYPE_1__* scan; } ;
struct rc_dev {int input_name; struct rc_map rc_map; } ;
struct TYPE_2__ {unsigned int keycode; } ;


 int IR_dprintk (int,char*,int ,unsigned int,unsigned int) ;
 unsigned int KEY_RESERVED ;
 unsigned int ir_lookup_by_scancode (struct rc_map*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 rc_g_keycode_from_table(struct rc_dev *dev, u32 scancode)
{
 struct rc_map *rc_map = &dev->rc_map;
 unsigned int keycode;
 unsigned int index;
 unsigned long flags;

 spin_lock_irqsave(&rc_map->lock, flags);

 index = ir_lookup_by_scancode(rc_map, scancode);
 keycode = index < rc_map->len ?
   rc_map->scan[index].keycode : KEY_RESERVED;

 spin_unlock_irqrestore(&rc_map->lock, flags);

 if (keycode != KEY_RESERVED)
  IR_dprintk(1, "%s: scancode 0x%04x keycode 0x%02x\n",
      dev->input_name, scancode, keycode);

 return keycode;
}
