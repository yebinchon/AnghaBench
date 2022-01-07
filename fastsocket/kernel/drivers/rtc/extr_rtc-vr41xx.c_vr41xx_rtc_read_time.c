
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int epoch ;
 unsigned long mktime (int ,int,int,int ,int ,int ) ;
 unsigned long read_elapsed_second () ;
 int rtc_time_to_tm (unsigned long,struct rtc_time*) ;

__attribute__((used)) static int vr41xx_rtc_read_time(struct device *dev, struct rtc_time *time)
{
 unsigned long epoch_sec, elapsed_sec;

 epoch_sec = mktime(epoch, 1, 1, 0, 0, 0);
 elapsed_sec = read_elapsed_second();

 rtc_time_to_tm(epoch_sec + elapsed_sec, time);

 return 0;
}
