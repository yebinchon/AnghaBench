
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 int set_normalized_timespec (struct timespec*,scalar_t__,scalar_t__) ;
 TYPE_1__ xtime ;

void save_time_delta(struct timespec *delta, struct timespec *rtc)
{
 set_normalized_timespec(delta,
    xtime.tv_sec - rtc->tv_sec,
    xtime.tv_nsec - rtc->tv_nsec);
}
