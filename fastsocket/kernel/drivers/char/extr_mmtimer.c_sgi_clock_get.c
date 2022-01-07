
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct timespec {int tv_sec; } ;
typedef int clockid_t ;
struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;


 struct timespec ns_to_timespec (scalar_t__) ;
 int rtc_time () ;
 TYPE_1__ sgi_clock_offset ;
 int sgi_clock_period ;

__attribute__((used)) static int sgi_clock_get(clockid_t clockid, struct timespec *tp)
{
 u64 nsec;

 nsec = rtc_time() * sgi_clock_period
   + sgi_clock_offset.tv_nsec;
 *tp = ns_to_timespec(nsec);
 tp->tv_sec += sgi_clock_offset.tv_sec;
 return 0;
}
