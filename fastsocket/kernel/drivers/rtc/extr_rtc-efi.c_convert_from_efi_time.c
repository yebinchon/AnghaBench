
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rtc_time {int tm_isdst; int tm_yday; int tm_wday; scalar_t__ tm_year; scalar_t__ tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_5__ {int daylight; scalar_t__ year; scalar_t__ month; int day; int hour; int minute; int second; } ;
typedef TYPE_1__ efi_time_t ;




 int compute_wday (TYPE_1__*) ;
 int compute_yday (TYPE_1__*) ;
 int memset (struct rtc_time*,int ,int) ;

__attribute__((used)) static void
convert_from_efi_time(efi_time_t *eft, struct rtc_time *wtime)
{
 memset(wtime, 0, sizeof(*wtime));
 wtime->tm_sec = eft->second;
 wtime->tm_min = eft->minute;
 wtime->tm_hour = eft->hour;
 wtime->tm_mday = eft->day;
 wtime->tm_mon = eft->month - 1;
 wtime->tm_year = eft->year - 1900;


 wtime->tm_wday = compute_wday(eft);


 wtime->tm_yday = compute_yday(eft);


 switch (eft->daylight & 129) {
 case 129:
  wtime->tm_isdst = 1;
  break;
 case 128:
  wtime->tm_isdst = 0;
  break;
 default:
  wtime->tm_isdst = -1;
 }
}
