
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_mon; int tm_mday; int tm_sec; int tm_min; int tm_hour; scalar_t__ tm_year; } ;
struct device {int dummy; } ;


 scalar_t__ epoch ;
 unsigned long mktime (scalar_t__,int,int,int ,int ,int ) ;
 int write_elapsed_second (unsigned long) ;

__attribute__((used)) static int vr41xx_rtc_set_time(struct device *dev, struct rtc_time *time)
{
 unsigned long epoch_sec, current_sec;

 epoch_sec = mktime(epoch, 1, 1, 0, 0, 0);
 current_sec = mktime(time->tm_year + 1900, time->tm_mon + 1, time->tm_mday,
                      time->tm_hour, time->tm_min, time->tm_sec);

 write_elapsed_second(current_sec - epoch_sec);

 return 0;
}
