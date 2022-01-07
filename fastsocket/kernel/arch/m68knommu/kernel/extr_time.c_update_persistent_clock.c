
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; } ;


 int set_rtc_mmss (int ) ;

int update_persistent_clock(struct timespec now)
{
 return set_rtc_mmss(now.tv_sec);
}
