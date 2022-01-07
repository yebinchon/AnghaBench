
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef size_t ssize_t ;
typedef int ktime_t ;


 size_t EINVAL ;
 int HRTIMER_MODE_ABS ;
 int ap_poll_timer ;
 int hrtimer_forward (int *,int ,int ) ;
 int hrtimer_get_expires (int *) ;
 int hrtimer_is_queued (int *) ;
 int hrtimer_set_expires (int *,int ) ;
 int hrtimer_start_expires (int *,int ) ;
 int ktime_set (int ,unsigned long long) ;
 unsigned long long poll_timeout ;
 int sscanf (char const*,char*,unsigned long long*) ;

__attribute__((used)) static ssize_t poll_timeout_store(struct bus_type *bus, const char *buf,
      size_t count)
{
 unsigned long long time;
 ktime_t hr_time;


 if (sscanf(buf, "%llu\n", &time) != 1 || time < 1 ||
     time > 120000000000ULL)
  return -EINVAL;
 poll_timeout = time;
 hr_time = ktime_set(0, poll_timeout);

 if (!hrtimer_is_queued(&ap_poll_timer) ||
     !hrtimer_forward(&ap_poll_timer, hrtimer_get_expires(&ap_poll_timer), hr_time)) {
  hrtimer_set_expires(&ap_poll_timer, hr_time);
  hrtimer_start_expires(&ap_poll_timer, HRTIMER_MODE_ABS);
 }
 return count;
}
