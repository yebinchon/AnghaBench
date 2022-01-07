
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct wm831x_rtc {int wm831x; } ;
struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;


 int WM831X_RTC_ALARM_1 ;
 int WM831X_RTC_ALM_ENA ;
 int WM831X_RTC_CONTROL ;
 int dev_err (struct device*,char*,int) ;
 struct wm831x_rtc* dev_get_drvdata (struct device*) ;
 int rtc_time_to_tm (int,int *) ;
 int wm831x_bulk_read (int ,int ,int,int*) ;
 int wm831x_reg_read (int ,int ) ;

__attribute__((used)) static int wm831x_rtc_readalarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct wm831x_rtc *wm831x_rtc = dev_get_drvdata(dev);
 int ret;
 u16 data[2];
 u32 time;

 ret = wm831x_bulk_read(wm831x_rtc->wm831x, WM831X_RTC_ALARM_1,
          2, data);
 if (ret != 0) {
  dev_err(dev, "Failed to read alarm time: %d\n", ret);
  return ret;
 }

 time = (data[0] << 16) | data[1];

 rtc_time_to_tm(time, &alrm->time);

 ret = wm831x_reg_read(wm831x_rtc->wm831x, WM831X_RTC_CONTROL);
 if (ret < 0) {
  dev_err(dev, "Failed to read RTC control: %d\n", ret);
  return ret;
 }

 if (ret & WM831X_RTC_ALM_ENA)
  alrm->enabled = 1;
 else
  alrm->enabled = 0;

 return 0;
}
