
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_wkalrm {int enabled; int pending; int time; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int RTSR ;
 int RTSR_AL ;
 int RTSR_ALE ;
 int memcpy (int *,int *,int) ;
 int rtc_alarm ;

__attribute__((used)) static int sa1100_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 u32 rtsr;

 memcpy(&alrm->time, &rtc_alarm, sizeof(struct rtc_time));
 rtsr = RTSR;
 alrm->enabled = (rtsr & RTSR_ALE) ? 1 : 0;
 alrm->pending = (rtsr & RTSR_AL) ? 1 : 0;
 return 0;
}
