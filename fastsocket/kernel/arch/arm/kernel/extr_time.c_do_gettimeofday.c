
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {unsigned long tv_sec; unsigned long tv_usec; } ;
struct TYPE_4__ {unsigned long (* offset ) () ;} ;
struct TYPE_3__ {unsigned long tv_sec; int tv_nsec; } ;


 unsigned long read_seqbegin_irqsave (int *,unsigned long) ;
 scalar_t__ read_seqretry_irqrestore (int *,unsigned long,unsigned long) ;
 unsigned long stub1 () ;
 TYPE_2__* system_timer ;
 TYPE_1__ xtime ;
 int xtime_lock ;

void do_gettimeofday(struct timeval *tv)
{
 unsigned long flags;
 unsigned long seq;
 unsigned long usec, sec;

 do {
  seq = read_seqbegin_irqsave(&xtime_lock, flags);
  usec = system_timer->offset();
  sec = xtime.tv_sec;
  usec += xtime.tv_nsec / 1000;
 } while (read_seqretry_irqrestore(&xtime_lock, seq, flags));


 while (usec >= 1000000) {
  usec -= 1000000;
  sec++;
 }

 tv->tv_sec = sec;
 tv->tv_usec = usec;
}
