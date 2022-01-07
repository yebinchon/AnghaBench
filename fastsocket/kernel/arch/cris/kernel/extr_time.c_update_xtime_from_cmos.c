
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_nsec; int tv_sec; } ;


 int get_cmos_time () ;
 scalar_t__ have_rtc ;
 TYPE_1__ xtime ;

void
update_xtime_from_cmos(void)
{
 if(have_rtc) {
  xtime.tv_sec = get_cmos_time();
  xtime.tv_nsec = 0;
 }
}
