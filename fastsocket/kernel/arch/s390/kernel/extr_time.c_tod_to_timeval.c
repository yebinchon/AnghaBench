
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned long long tv_sec; int tv_nsec; } ;
typedef int __u64 ;


 int do_div (unsigned long long,int) ;

void tod_to_timeval(__u64 todval, struct timespec *xt)
{
 unsigned long long sec;

 sec = todval >> 12;
 do_div(sec, 1000000);
 xt->tv_sec = sec;
 todval -= (sec * 1000000) << 12;
 xt->tv_nsec = ((todval * 1000) >> 12);
}
