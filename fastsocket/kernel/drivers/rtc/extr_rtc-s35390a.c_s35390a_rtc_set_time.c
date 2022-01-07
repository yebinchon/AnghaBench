
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int s35390a_set_datetime (int ,struct rtc_time*) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static int s35390a_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 return s35390a_set_datetime(to_i2c_client(dev), tm);
}
