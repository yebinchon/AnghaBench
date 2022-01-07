
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 scalar_t__ TOD_UNIX_EPOCH ;
 scalar_t__ get_clock () ;
 int tod_to_timeval (scalar_t__,struct timespec*) ;

void read_persistent_clock(struct timespec *ts)
{
 tod_to_timeval(get_clock() - TOD_UNIX_EPOCH, ts);
}
