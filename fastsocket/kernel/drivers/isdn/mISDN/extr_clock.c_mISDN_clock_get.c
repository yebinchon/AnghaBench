
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef unsigned short u16 ;
typedef int time_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;


 int do_gettimeofday (struct timeval*) ;
 unsigned short iclock_count ;
 int iclock_lock ;
 TYPE_1__ iclock_tv ;
 int read_lock_irqsave (int *,int ) ;
 int read_unlock_irqrestore (int *,int ) ;

unsigned short
mISDN_clock_get(void)
{
 u_long flags;
 struct timeval tv_now;
 time_t elapsed_sec;
 int elapsed_8000th;
 u16 count;

 read_lock_irqsave(&iclock_lock, flags);

 do_gettimeofday(&tv_now);
 elapsed_sec = tv_now.tv_sec - iclock_tv.tv_sec;
 elapsed_8000th = (tv_now.tv_usec / 125) - (iclock_tv.tv_usec / 125);
 if (elapsed_8000th < 0) {
  elapsed_sec -= 1;
  elapsed_8000th += 8000;
 }

 count = iclock_count + elapsed_sec * 8000 + elapsed_8000th;
 read_unlock_irqrestore(&iclock_lock, flags);
 return count;
}
