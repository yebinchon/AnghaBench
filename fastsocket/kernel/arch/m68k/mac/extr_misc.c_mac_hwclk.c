
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; scalar_t__ tm_wday; } ;
struct TYPE_2__ {int adb_type; } ;
 unsigned long cuda_read_time () ;
 int cuda_write_time (unsigned long) ;
 unsigned long maciisi_read_time () ;
 int maciisi_write_time (unsigned long) ;
 TYPE_1__* macintosh_config ;
 unsigned long mktime (int ,int ,int ,int ,int ,int ) ;
 unsigned long pmu_read_time () ;
 int pmu_write_time (unsigned long) ;
 int printk (char*,int ,int ,int ,int ,int ,int ) ;
 int unmktime (unsigned long,int ,int *,int *,int *,int *,int *,int *) ;
 unsigned long via_read_time () ;
 int via_write_time (unsigned long) ;

int mac_hwclk(int op, struct rtc_time *t)
{
 unsigned long now;

 if (!op) {
  switch (macintosh_config->adb_type) {
  case 132:
  case 130:
   now = via_read_time();
   break;
  case 131:
   now = maciisi_read_time();
   break;
  case 129:
  case 128:
   now = pmu_read_time();
   break;
  case 133:
   now = cuda_read_time();
   break;
  default:
   now = 0;
  }

  t->tm_wday = 0;
  unmktime(now, 0,
    &t->tm_year, &t->tm_mon, &t->tm_mday,
    &t->tm_hour, &t->tm_min, &t->tm_sec);





 } else {






  now = mktime(t->tm_year + 1900, t->tm_mon + 1, t->tm_mday,
        t->tm_hour, t->tm_min, t->tm_sec);

  switch (macintosh_config->adb_type) {
  case 132:
  case 130:
   via_write_time(now);
   break;
  case 133:
   cuda_write_time(now);
   break;
  case 129:
  case 128:
   pmu_write_time(now);
   break;
  case 131:
   maciisi_write_time(now);
  }
 }
 return 0;
}
