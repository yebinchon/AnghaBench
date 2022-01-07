
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct locomo_dev {scalar_t__ mapbase; } ;
struct led_classdev {TYPE_1__* dev; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int parent; } ;


 struct locomo_dev* LOCOMO_DEV (int ) ;
 int LOCOMO_LPT_TOFH ;
 int LOCOMO_LPT_TOFL ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int locomo_writel (int ,scalar_t__) ;

__attribute__((used)) static void locomoled_brightness_set(struct led_classdev *led_cdev,
    enum led_brightness value, int offset)
{
 struct locomo_dev *locomo_dev = LOCOMO_DEV(led_cdev->dev->parent);
 unsigned long flags;

 local_irq_save(flags);
 if (value)
  locomo_writel(LOCOMO_LPT_TOFH, locomo_dev->mapbase + offset);
 else
  locomo_writel(LOCOMO_LPT_TOFL, locomo_dev->mapbase + offset);
 local_irq_restore(flags);
}
