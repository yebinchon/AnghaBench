
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int tv_sec; } ;
struct TYPE_2__ {int (* set_wallclock ) (int ) ;} ;


 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ) ;
 TYPE_1__ x86_platform ;

int update_persistent_clock(struct timespec now)
{
 unsigned long flags;
 int retval;

 spin_lock_irqsave(&rtc_lock, flags);
 retval = x86_platform.set_wallclock(now.tv_sec);
 spin_unlock_irqrestore(&rtc_lock, flags);

 return retval;
}
