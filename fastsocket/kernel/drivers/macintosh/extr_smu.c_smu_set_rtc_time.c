
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_simple_cmd {int dummy; } ;
struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; int tm_wday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;


 int ENODEV ;
 int SMU_CMD_RTC_COMMAND ;
 int SMU_CMD_RTC_SET_DATETIME ;
 scalar_t__ hex2bcd (scalar_t__) ;
 int * smu ;
 int smu_queue_simple (struct smu_simple_cmd*,int ,int,int *,int *,int ,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int smu_spinwait_simple (struct smu_simple_cmd*) ;

int smu_set_rtc_time(struct rtc_time *time, int spinwait)
{
 struct smu_simple_cmd cmd;
 int rc;

 if (smu == ((void*)0))
  return -ENODEV;

 rc = smu_queue_simple(&cmd, SMU_CMD_RTC_COMMAND, 8, ((void*)0), ((void*)0),
         SMU_CMD_RTC_SET_DATETIME,
         hex2bcd(time->tm_sec),
         hex2bcd(time->tm_min),
         hex2bcd(time->tm_hour),
         time->tm_wday,
         hex2bcd(time->tm_mday),
         hex2bcd(time->tm_mon) + 1,
         hex2bcd(time->tm_year - 100));
 if (rc)
  return rc;
 smu_spinwait_simple(&cmd);

 return 0;
}
