
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int year; scalar_t__ month; scalar_t__ day; } ;
typedef TYPE_1__ efi_time_t ;


 int rtc_year_days (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static inline int
compute_yday(efi_time_t *eft)
{

 return rtc_year_days(eft->day - 1, eft->month - 1, eft->year);
}
