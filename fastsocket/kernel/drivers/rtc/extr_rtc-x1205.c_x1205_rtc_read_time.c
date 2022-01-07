
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int X1205_CCR_BASE ;
 int to_i2c_client (struct device*) ;
 int x1205_get_datetime (int ,struct rtc_time*,int ) ;

__attribute__((used)) static int x1205_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 return x1205_get_datetime(to_i2c_client(dev),
  tm, X1205_CCR_BASE);
}
