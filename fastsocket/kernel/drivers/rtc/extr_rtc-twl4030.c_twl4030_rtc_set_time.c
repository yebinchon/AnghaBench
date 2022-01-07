
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct device {int dummy; } ;


 int ALL_TIME_REGS ;
 unsigned char BIT_RTC_CTRL_REG_STOP_RTC_M ;
 int REG_RTC_CTRL_REG ;
 int REG_SECONDS_REG ;
 int TWL4030_MODULE_RTC ;
 unsigned char bin2bcd (scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 int twl4030_i2c_write (int ,unsigned char*,int ,int ) ;
 int twl4030_rtc_read_u8 (unsigned char*,int ) ;
 int twl4030_rtc_write_u8 (unsigned char,int ) ;

__attribute__((used)) static int twl4030_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 unsigned char save_control;
 unsigned char rtc_data[ALL_TIME_REGS + 1];
 int ret;

 rtc_data[1] = bin2bcd(tm->tm_sec);
 rtc_data[2] = bin2bcd(tm->tm_min);
 rtc_data[3] = bin2bcd(tm->tm_hour);
 rtc_data[4] = bin2bcd(tm->tm_mday);
 rtc_data[5] = bin2bcd(tm->tm_mon + 1);
 rtc_data[6] = bin2bcd(tm->tm_year - 100);


 ret = twl4030_rtc_read_u8(&save_control, REG_RTC_CTRL_REG);
 if (ret < 0)
  goto out;

 save_control &= ~BIT_RTC_CTRL_REG_STOP_RTC_M;
 twl4030_rtc_write_u8(save_control, REG_RTC_CTRL_REG);
 if (ret < 0)
  goto out;


 ret = twl4030_i2c_write(TWL4030_MODULE_RTC, rtc_data,
   REG_SECONDS_REG, ALL_TIME_REGS);
 if (ret < 0) {
  dev_err(dev, "rtc_set_time error %d\n", ret);
  goto out;
 }


 save_control |= BIT_RTC_CTRL_REG_STOP_RTC_M;
 ret = twl4030_rtc_write_u8(save_control, REG_RTC_CTRL_REG);

out:
 return ret;
}
