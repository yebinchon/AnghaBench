
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long hour; long minute; long second; long year; long month; long day; } ;
typedef TYPE_1__ efi_time_t ;


 scalar_t__ LEAPS_THRU_END_OF (long) ;
 unsigned long SECS_PER_DAY ;
 long SECS_PER_HOUR ;
 size_t __isleap (long) ;

int
offtime (unsigned long t, efi_time_t *tp)
{
 const unsigned short int __mon_yday[2][13] =
 {

  { 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365 },

  { 0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366 }
 };
 long int days, rem, y;
 const unsigned short int *ip;

 days = t / SECS_PER_DAY;
 rem = t % SECS_PER_DAY;
 while (rem < 0) {
  rem += SECS_PER_DAY;
  --days;
 }
 while (rem >= SECS_PER_DAY) {
  rem -= SECS_PER_DAY;
  ++days;
 }
 tp->hour = rem / SECS_PER_HOUR;
 rem %= SECS_PER_HOUR;
 tp->minute = rem / 60;
 tp->second = rem % 60;

 y = 1970;






 while (days < 0 || days >= (((y) % 4 == 0 && ((y) % 100 != 0 || (y) % 400 == 0)) ? 366 : 365)) {

  long int yg = y + days / 365 - (days % 365 < 0);


  days -= ((yg - y) * 365 + (((yg - 1) / (4) - ((yg - 1) % (4) < 0)) - ((yg - 1) / (100) - ((yg - 1) % (100) < 0)) + ((yg - 1) / (400) - ((yg - 1) % (400) < 0)))
    - (((y - 1) / (4) - ((y - 1) % (4) < 0)) - ((y - 1) / (100) - ((y - 1) % (100) < 0)) + ((y - 1) / (400) - ((y - 1) % (400) < 0))));
  y = yg;
 }
 tp->year = y;
 ip = __mon_yday[((y) % 4 == 0 && ((y) % 100 != 0 || (y) % 400 == 0))];
 for (y = 11; days < (long int) ip[y]; --y)
  continue;
 days -= ip[y];
 tp->month = y + 1;
 tp->day = days + 1;
 return 1;
}
