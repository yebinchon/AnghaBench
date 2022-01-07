
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nes_hw_tune_timer {int threshold_high; int threshold_target; int threshold_low; int timer_in_use_max; int timer_in_use_min; } ;
struct nes_device {struct nes_adapter* nesadapter; } ;
struct nes_adapter {int periodic_timer_lock; struct nes_hw_tune_timer tune_timer; } ;


 int DEFAULT_JUMBO_NES_QL_HIGH ;
 int DEFAULT_JUMBO_NES_QL_LOW ;
 int DEFAULT_JUMBO_NES_QL_TARGET ;
 int DEFAULT_NES_QL_HIGH ;
 int DEFAULT_NES_QL_LOW ;
 int DEFAULT_NES_QL_TARGET ;
 int NES_NIC_FAST_TIMER_HIGH ;
 int NES_NIC_FAST_TIMER_LOW ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void nes_nic_init_timer_defaults(struct nes_device *nesdev, u8 jumbomode)
{
 unsigned long flags;
 struct nes_adapter *nesadapter = nesdev->nesadapter;
 struct nes_hw_tune_timer *shared_timer = &nesadapter->tune_timer;

 spin_lock_irqsave(&nesadapter->periodic_timer_lock, flags);

 shared_timer->timer_in_use_min = NES_NIC_FAST_TIMER_LOW;
 shared_timer->timer_in_use_max = NES_NIC_FAST_TIMER_HIGH;
 if (jumbomode) {
  shared_timer->threshold_low = DEFAULT_JUMBO_NES_QL_LOW;
  shared_timer->threshold_target = DEFAULT_JUMBO_NES_QL_TARGET;
  shared_timer->threshold_high = DEFAULT_JUMBO_NES_QL_HIGH;
 } else {
  shared_timer->threshold_low = DEFAULT_NES_QL_LOW;
  shared_timer->threshold_target = DEFAULT_NES_QL_TARGET;
  shared_timer->threshold_high = DEFAULT_NES_QL_HIGH;
 }


 spin_unlock_irqrestore(&nesadapter->periodic_timer_lock, flags);
}
