
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 int do_settimeofday (struct timespec*) ;
 int set_normalized_timespec (struct timespec*,scalar_t__,scalar_t__) ;

void restore_time_delta(struct timespec *delta, struct timespec *rtc)
{
 struct timespec ts;

 set_normalized_timespec(&ts,
    delta->tv_sec + rtc->tv_sec,
    delta->tv_nsec + rtc->tv_nsec);

 do_settimeofday(&ts);
}
