
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;


 int read_rtc_mmss () ;

void read_persistent_clock(struct timespec *ts)
{
 ts->tv_sec = read_rtc_mmss();
 ts->tv_nsec = 0;
}
