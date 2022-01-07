
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {unsigned long tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_2__ {unsigned long (* get_wallclock ) () ;} ;


 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long stub1 () ;
 TYPE_1__ x86_platform ;

void read_persistent_clock(struct timespec *ts)
{
 unsigned long retval, flags;

 spin_lock_irqsave(&rtc_lock, flags);
 retval = x86_platform.get_wallclock();
 spin_unlock_irqrestore(&rtc_lock, flags);

 ts->tv_sec = retval;
 ts->tv_nsec = 0;
}
