
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 scalar_t__ TOD_UNIX_EPOCH ;
 scalar_t__ sched_clock_base_cc ;
 int tod_to_timeval (scalar_t__,struct timespec*) ;

void read_boot_clock(struct timespec *ts)
{
 tod_to_timeval(sched_clock_base_cc - TOD_UNIX_EPOCH, ts);
}
