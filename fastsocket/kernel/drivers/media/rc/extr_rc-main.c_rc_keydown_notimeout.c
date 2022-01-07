
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rc_dev {int keylock; } ;


 int ir_do_keydown (struct rc_dev*,int,int ,int ) ;
 int rc_g_keycode_from_table (struct rc_dev*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rc_keydown_notimeout(struct rc_dev *dev, int scancode, u8 toggle)
{
 unsigned long flags;
 u32 keycode = rc_g_keycode_from_table(dev, scancode);

 spin_lock_irqsave(&dev->keylock, flags);
 ir_do_keydown(dev, scancode, keycode, toggle);
 spin_unlock_irqrestore(&dev->keylock, flags);
}
