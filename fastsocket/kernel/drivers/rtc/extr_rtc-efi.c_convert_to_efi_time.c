
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rtc_time {scalar_t__ tm_isdst; int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_3__ {int timezone; int daylight; scalar_t__ nanosecond; int second; int minute; int hour; int day; scalar_t__ month; scalar_t__ year; } ;
typedef TYPE_1__ efi_time_t ;


 int EFI_ISDST ;
 int EFI_UNSPECIFIED_TIMEZONE ;

__attribute__((used)) static void
convert_to_efi_time(struct rtc_time *wtime, efi_time_t *eft)
{
 eft->year = wtime->tm_year + 1900;
 eft->month = wtime->tm_mon + 1;
 eft->day = wtime->tm_mday;
 eft->hour = wtime->tm_hour;
 eft->minute = wtime->tm_min;
 eft->second = wtime->tm_sec;
 eft->nanosecond = 0;
 eft->daylight = wtime->tm_isdst ? EFI_ISDST : 0;
 eft->timezone = EFI_UNSPECIFIED_TIMEZONE;
}
