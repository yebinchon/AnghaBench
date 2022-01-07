
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIO_MSG_EVENT (int,char*) ;
 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int* recovery_delay ;
 int recovery_lock ;
 scalar_t__ recovery_phase ;
 int recovery_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_pending (int *) ;

__attribute__((used)) static void ccw_device_schedule_recovery(void)
{
 unsigned long flags;

 CIO_MSG_EVENT(4, "recovery: schedule\n");
 spin_lock_irqsave(&recovery_lock, flags);
 if (!timer_pending(&recovery_timer) || (recovery_phase != 0)) {
  recovery_phase = 0;
  mod_timer(&recovery_timer, jiffies + recovery_delay[0] * HZ);
 }
 spin_unlock_irqrestore(&recovery_lock, flags);
}
