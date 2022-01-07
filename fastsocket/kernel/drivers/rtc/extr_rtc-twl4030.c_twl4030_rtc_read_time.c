
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;


 int ALL_TIME_REGS ;
 int BIT_RTC_CTRL_REG_GET_TIME_M ;
 int REG_RTC_CTRL_REG ;
 int REG_SECONDS_REG ;
 int TWL4030_MODULE_RTC ;
 void* bcd2bin (unsigned char) ;
 int dev_err (struct device*,char*,int) ;
 int twl4030_i2c_read (int ,unsigned char*,int ,int ) ;
 int twl4030_rtc_read_u8 (int *,int ) ;
 int twl4030_rtc_write_u8 (int ,int ) ;

__attribute__((used)) static int twl4030_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 unsigned char rtc_data[ALL_TIME_REGS + 1];
 int ret;
 u8 save_control;

 ret = twl4030_rtc_read_u8(&save_control, REG_RTC_CTRL_REG);
 if (ret < 0)
  return ret;

 save_control |= BIT_RTC_CTRL_REG_GET_TIME_M;

 ret = twl4030_rtc_write_u8(save_control, REG_RTC_CTRL_REG);
 if (ret < 0)
  return ret;

 ret = twl4030_i2c_read(TWL4030_MODULE_RTC, rtc_data,
          REG_SECONDS_REG, ALL_TIME_REGS);

 if (ret < 0) {
  dev_err(dev, "rtc_read_time error %d\n", ret);
  return ret;
 }

 tm->tm_sec = bcd2bin(rtc_data[0]);
 tm->tm_min = bcd2bin(rtc_data[1]);
 tm->tm_hour = bcd2bin(rtc_data[2]);
 tm->tm_mday = bcd2bin(rtc_data[3]);
 tm->tm_mon = bcd2bin(rtc_data[4]) - 1;
 tm->tm_year = bcd2bin(rtc_data[5]) + 100;

 return ret;
}
