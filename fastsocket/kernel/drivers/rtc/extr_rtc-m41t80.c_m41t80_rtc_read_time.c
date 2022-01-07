
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int m41t80_get_datetime (int ,struct rtc_time*) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static int m41t80_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 return m41t80_get_datetime(to_i2c_client(dev), tm);
}
