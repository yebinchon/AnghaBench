
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct pvclock_wall_clock {int version; int sec; scalar_t__ nsec; } ;
struct pvclock_vcpu_time_info {int dummy; } ;


 scalar_t__ NSEC_PER_SEC ;
 scalar_t__ do_div (int,scalar_t__) ;
 int pvclock_clocksource_read (struct pvclock_vcpu_time_info*) ;
 int rmb () ;
 int set_normalized_timespec (struct timespec*,int,scalar_t__) ;

void pvclock_read_wallclock(struct pvclock_wall_clock *wall_clock,
       struct pvclock_vcpu_time_info *vcpu_time,
       struct timespec *ts)
{
 u32 version;
 u64 delta;
 struct timespec now;


 do {
  version = wall_clock->version;
  rmb();
  now.tv_sec = wall_clock->sec;
  now.tv_nsec = wall_clock->nsec;
  rmb();
 } while ((wall_clock->version & 1) || (version != wall_clock->version));

 delta = pvclock_clocksource_read(vcpu_time);
 delta += now.tv_sec * (u64)NSEC_PER_SEC + now.tv_nsec;

 now.tv_nsec = do_div(delta, NSEC_PER_SEC);
 now.tv_sec = delta;

 set_normalized_timespec(ts, now.tv_sec, now.tv_nsec);
}
