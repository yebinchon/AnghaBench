
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int time1 ;
struct wm831x_rtc {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int WM831X_GET_TIME_RETRIES ;
 int WM831X_RTC_CONTROL ;
 int WM831X_RTC_TIME_1 ;
 int WM831X_RTC_VALID ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 struct wm831x_rtc* dev_get_drvdata (struct device*) ;
 scalar_t__ memcmp (int*,int*,int) ;
 int rtc_time_to_tm (int,struct rtc_time*) ;
 int rtc_valid_tm (struct rtc_time*) ;
 int wm831x_bulk_read (struct wm831x*,int ,int,int*) ;
 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_rtc_readtime(struct device *dev, struct rtc_time *tm)
{
 struct wm831x_rtc *wm831x_rtc = dev_get_drvdata(dev);
 struct wm831x *wm831x = wm831x_rtc->wm831x;
 u16 time1[2], time2[2];
 int ret;
 int count = 0;


 ret = wm831x_reg_read(wm831x, WM831X_RTC_CONTROL);
 if (ret < 0) {
  dev_err(dev, "Failed to read RTC control: %d\n", ret);
  return ret;
 }
 if (!(ret & WM831X_RTC_VALID)) {
  dev_dbg(dev, "RTC not yet configured\n");
  return -EINVAL;
 }




 do {
  ret = wm831x_bulk_read(wm831x, WM831X_RTC_TIME_1,
           2, time1);
  if (ret != 0)
   continue;

  ret = wm831x_bulk_read(wm831x, WM831X_RTC_TIME_1,
           2, time2);
  if (ret != 0)
   continue;

  if (memcmp(time1, time2, sizeof(time1)) == 0) {
   u32 time = (time1[0] << 16) | time1[1];

   rtc_time_to_tm(time, tm);
   return rtc_valid_tm(tm);
  }

 } while (++count < WM831X_GET_TIME_RETRIES);

 dev_err(dev, "Timed out reading current time\n");

 return -EIO;
}
