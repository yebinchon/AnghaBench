
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tc6393xb {int lock; scalar_t__ scr; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 scalar_t__ SCR_FER ;
 int SCR_FER_SLCDEN ;
 int ioread8 (scalar_t__) ;
 int iowrite8 (int ,scalar_t__) ;
 struct tc6393xb* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct platform_device* to_platform_device (int ) ;

int tc6393xb_lcd_set_power(struct platform_device *fb, bool on)
{
 struct platform_device *dev = to_platform_device(fb->dev.parent);
 struct tc6393xb *tc6393xb = platform_get_drvdata(dev);
 u8 fer;
 unsigned long flags;

 spin_lock_irqsave(&tc6393xb->lock, flags);

 fer = ioread8(tc6393xb->scr + SCR_FER);
 if (on)
  fer |= SCR_FER_SLCDEN;
 else
  fer &= ~SCR_FER_SLCDEN;
 iowrite8(fer, tc6393xb->scr + SCR_FER);

 spin_unlock_irqrestore(&tc6393xb->lock, flags);

 return 0;
}
