
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct timespec {long tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {long (* offset ) () ;} ;
struct TYPE_5__ {long tv_nsec; scalar_t__ tv_sec; } ;


 int EINVAL ;
 unsigned long NSEC_PER_SEC ;
 long NSEC_PER_USEC ;
 int clock_was_set () ;
 int ntp_clear () ;
 int set_normalized_timespec (TYPE_1__*,scalar_t__,long) ;
 long stub1 () ;
 TYPE_3__* system_timer ;
 TYPE_1__ wall_to_monotonic ;
 int write_seqlock_irq (int *) ;
 int write_sequnlock_irq (int *) ;
 TYPE_1__ xtime ;
 int xtime_lock ;

int do_settimeofday(struct timespec *tv)
{
 time_t wtm_sec, sec = tv->tv_sec;
 long wtm_nsec, nsec = tv->tv_nsec;

 if ((unsigned long)tv->tv_nsec >= NSEC_PER_SEC)
  return -EINVAL;

 write_seqlock_irq(&xtime_lock);






 nsec -= system_timer->offset() * NSEC_PER_USEC;

 wtm_sec = wall_to_monotonic.tv_sec + (xtime.tv_sec - sec);
 wtm_nsec = wall_to_monotonic.tv_nsec + (xtime.tv_nsec - nsec);

 set_normalized_timespec(&xtime, sec, nsec);
 set_normalized_timespec(&wall_to_monotonic, wtm_sec, wtm_nsec);

 ntp_clear();
 write_sequnlock_irq(&xtime_lock);
 clock_was_set();
 return 0;
}
