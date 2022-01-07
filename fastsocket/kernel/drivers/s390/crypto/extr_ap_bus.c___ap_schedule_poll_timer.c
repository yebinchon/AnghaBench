
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ktime_t ;


 int ap_poll_timer ;
 int ap_poll_timer_lock ;
 scalar_t__ ap_suspend_flag ;
 int hrtimer_expires_remaining (int *) ;
 int hrtimer_forward_now (int *,int ) ;
 scalar_t__ hrtimer_is_queued (int *) ;
 int hrtimer_restart (int *) ;
 int ktime_set (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int poll_timeout ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void __ap_schedule_poll_timer(void)
{
 ktime_t hr_time;

 spin_lock_bh(&ap_poll_timer_lock);
 if (hrtimer_is_queued(&ap_poll_timer) || ap_suspend_flag)
  goto out;
 if (ktime_to_ns(hrtimer_expires_remaining(&ap_poll_timer)) <= 0) {
  hr_time = ktime_set(0, poll_timeout);
  hrtimer_forward_now(&ap_poll_timer, hr_time);
  hrtimer_restart(&ap_poll_timer);
 }
out:
 spin_unlock_bh(&ap_poll_timer_lock);
}
