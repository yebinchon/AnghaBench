
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nes_device {struct nes_adapter* nesadapter; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct nes_adapter {TYPE_1__ lc_timer; int phy_lock; scalar_t__* link_interrupt_count; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void nes_clc(unsigned long parm)
{
 unsigned long flags;
 struct nes_device *nesdev = (struct nes_device *)parm;
 struct nes_adapter *nesadapter = nesdev->nesadapter;

 spin_lock_irqsave(&nesadapter->phy_lock, flags);
    nesadapter->link_interrupt_count[0] = 0;
    nesadapter->link_interrupt_count[1] = 0;
    nesadapter->link_interrupt_count[2] = 0;
    nesadapter->link_interrupt_count[3] = 0;
 spin_unlock_irqrestore(&nesadapter->phy_lock, flags);

 nesadapter->lc_timer.expires = jiffies + 3600 * HZ;
 add_timer(&nesadapter->lc_timer);
}
