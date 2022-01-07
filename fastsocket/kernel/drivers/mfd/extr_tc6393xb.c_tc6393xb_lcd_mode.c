
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc6393xb {int lock; scalar_t__ scr; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fb_videomode {int pixclock; } ;


 scalar_t__ SCR_PLL1CR ;
 int iowrite16 (int,scalar_t__) ;
 struct tc6393xb* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct platform_device* to_platform_device (int ) ;

int tc6393xb_lcd_mode(struct platform_device *fb,
     const struct fb_videomode *mode) {
 struct platform_device *dev = to_platform_device(fb->dev.parent);
 struct tc6393xb *tc6393xb = platform_get_drvdata(dev);
 unsigned long flags;

 spin_lock_irqsave(&tc6393xb->lock, flags);

 iowrite16(mode->pixclock, tc6393xb->scr + SCR_PLL1CR + 0);
 iowrite16(mode->pixclock >> 16, tc6393xb->scr + SCR_PLL1CR + 2);

 spin_unlock_irqrestore(&tc6393xb->lock, flags);

 return 0;
}
