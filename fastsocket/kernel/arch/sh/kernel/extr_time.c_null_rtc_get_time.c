
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;


 int mktime (int,int,int,int ,int ,int ) ;

__attribute__((used)) static void null_rtc_get_time(struct timespec *tv)
{
 tv->tv_sec = mktime(2000, 1, 1, 0, 0, 0);
 tv->tv_nsec = 0;
}
