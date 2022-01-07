
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long RTCTIME ;

void m68328_timer_gettod(int *year, int *mon, int *day, int *hour, int *min, int *sec)
{
 long now = RTCTIME;

 *year = *mon = *day = 1;
 *hour = (now >> 24) % 24;
 *min = (now >> 16) % 60;
 *sec = now % 60;
}
