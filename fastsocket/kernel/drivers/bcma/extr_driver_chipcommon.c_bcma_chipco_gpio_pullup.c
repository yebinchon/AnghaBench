
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bcma_drv_cc {int gpio_lock; TYPE_2__* core; } ;
struct TYPE_3__ {int rev; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int BCMA_CC_GPIOPULLUP ;
 int bcma_cc_write32_masked (struct bcma_drv_cc*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 bcma_chipco_gpio_pullup(struct bcma_drv_cc *cc, u32 mask, u32 value)
{
 unsigned long flags;
 u32 res;

 if (cc->core->id.rev < 20)
  return 0;

 spin_lock_irqsave(&cc->gpio_lock, flags);
 res = bcma_cc_write32_masked(cc, BCMA_CC_GPIOPULLUP, mask, value);
 spin_unlock_irqrestore(&cc->gpio_lock, flags);

 return res;
}
