
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; } ;
struct rtc_device {int dummy; } ;


 int rtc_class_close (struct rtc_device*) ;
 struct rtc_device* rtc_class_open (char*) ;
 int rtc_set_mmss (struct rtc_device*,int ) ;

int update_persistent_clock(struct timespec now)
{
 struct rtc_device *rtc = rtc_class_open("rtc0");
 int err = -1;

 if (rtc) {
  err = rtc_set_mmss(rtc, now.tv_sec);
  rtc_class_close(rtc);
 }

 return err;
}
