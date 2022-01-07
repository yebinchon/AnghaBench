
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_nsec; scalar_t__ tv_sec; } ;


 scalar_t__ next_rtc_update ;
 int ntp_synced () ;
 scalar_t__ set_rtc () ;
 scalar_t__ tick_nsec ;
 scalar_t__ time_before (unsigned long,scalar_t__) ;
 TYPE_1__ xtime ;

__attribute__((used)) static inline void do_set_rtc(void)
{
 if (!ntp_synced() || set_rtc == ((void*)0))
  return;

 if (next_rtc_update &&
     time_before((unsigned long)xtime.tv_sec, next_rtc_update))
  return;

 if (xtime.tv_nsec < 500000000 - ((unsigned) tick_nsec >> 1) &&
     xtime.tv_nsec >= 500000000 + ((unsigned) tick_nsec >> 1))
  return;

 if (set_rtc())



  next_rtc_update = xtime.tv_sec + 60;
 else
  next_rtc_update = xtime.tv_sec + 660;
}
