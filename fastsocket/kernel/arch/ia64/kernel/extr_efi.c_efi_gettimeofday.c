
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_4__ {int nanosecond; int second; int minute; int hour; int day; int month; int year; } ;
typedef TYPE_1__ efi_time_t ;
struct TYPE_5__ {scalar_t__ (* get_time ) (TYPE_1__*,int *) ;} ;


 scalar_t__ EFI_SUCCESS ;
 TYPE_3__ efi ;
 int memset (struct timespec*,int ,int) ;
 int mktime (int ,int ,int ,int ,int ,int ) ;
 scalar_t__ stub1 (TYPE_1__*,int *) ;

void
efi_gettimeofday (struct timespec *ts)
{
 efi_time_t tm;

 if ((*efi.get_time)(&tm, ((void*)0)) != EFI_SUCCESS) {
  memset(ts, 0, sizeof(*ts));
  return;
 }

 ts->tv_sec = mktime(tm.year, tm.month, tm.day,
       tm.hour, tm.minute, tm.second);
 ts->tv_nsec = tm.nanosecond;
}
