
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct locomo_dev {TYPE_1__ dev; } ;
struct locomo {int lock; scalar_t__ base; } ;


 int LOCOMO_ALC_EN ;
 scalar_t__ LOCOMO_ALD ;
 scalar_t__ LOCOMO_ALS ;
 scalar_t__ LOCOMO_FRONTLIGHT ;
 int LOCOMO_GPIO_FL_VR ;
 struct locomo* locomo_chip_driver (struct locomo_dev*) ;
 int locomo_gpio_write (int ,int ,int) ;
 int locomo_writel (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

void locomo_frontlight_set(struct locomo_dev *dev, int duty, int vr, int bpwf)
{
 unsigned long flags;
 struct locomo *lchip = locomo_chip_driver(dev);

 if (vr)
  locomo_gpio_write(dev->dev.parent, LOCOMO_GPIO_FL_VR, 1);
 else
  locomo_gpio_write(dev->dev.parent, LOCOMO_GPIO_FL_VR, 0);

 spin_lock_irqsave(&lchip->lock, flags);
 locomo_writel(bpwf, lchip->base + LOCOMO_FRONTLIGHT + LOCOMO_ALS);
 udelay(100);
 locomo_writel(duty, lchip->base + LOCOMO_FRONTLIGHT + LOCOMO_ALD);
 locomo_writel(bpwf | LOCOMO_ALC_EN, lchip->base + LOCOMO_FRONTLIGHT + LOCOMO_ALS);
 spin_unlock_irqrestore(&lchip->lock, flags);
}
