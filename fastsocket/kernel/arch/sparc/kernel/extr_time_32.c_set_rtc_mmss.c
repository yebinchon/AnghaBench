
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;


 int rtc_class_close (struct rtc_device*) ;
 struct rtc_device* rtc_class_open (char*) ;
 int rtc_set_mmss (struct rtc_device*,unsigned long) ;

__attribute__((used)) static int set_rtc_mmss(unsigned long secs)
{
 struct rtc_device *rtc = rtc_class_open("rtc0");
 int err = -1;

 if (rtc) {
  err = rtc_set_mmss(rtc, secs);
  rtc_class_close(rtc);
 }

 return err;
}
