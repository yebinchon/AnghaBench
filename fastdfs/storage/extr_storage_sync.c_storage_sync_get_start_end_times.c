
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct tm {scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct TYPE_4__ {scalar_t__ hour; scalar_t__ minute; } ;
typedef TYPE_1__ TimeInfo ;


 int localtime_r (int*,struct tm*) ;
 int mktime (struct tm*) ;

__attribute__((used)) static void storage_sync_get_start_end_times(time_t current_time, const TimeInfo *pStartTime, const TimeInfo *pEndTime, time_t *start_time, time_t *end_time)


{
 struct tm tm_time;


 localtime_r(&current_time, &tm_time);
 tm_time.tm_sec = 0;






 tm_time.tm_hour = pStartTime->hour;
 tm_time.tm_min = pStartTime->minute;
 *start_time = mktime(&tm_time);


 if (pEndTime->hour < pStartTime->hour || (pEndTime->hour == pStartTime->hour && pEndTime->minute < pStartTime->minute))

 {
  current_time += 24 * 3600;
  localtime_r(&current_time, &tm_time);
  tm_time.tm_sec = 0;
 }

 tm_time.tm_hour = pEndTime->hour;
 tm_time.tm_min = pEndTime->minute;
 *end_time = mktime(&tm_time);
}
