
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int enabled; int time; } ;
struct rtc_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EBUSY ;
 scalar_t__ rtc_read_alarm (struct rtc_device*,struct rtc_wkalrm*) ;
 scalar_t__ rtc_read_time (struct rtc_device*,int *) ;
 scalar_t__ rtc_set_alarm (struct rtc_device*,struct rtc_wkalrm*) ;
 int rtc_time_to_tm (unsigned long,int *) ;
 int rtc_tm_to_time (int *,unsigned long*) ;
 unsigned long simple_strtoul (char*,int *,int ) ;
 struct rtc_device* to_rtc_device (struct device*) ;

__attribute__((used)) static ssize_t
rtc_sysfs_set_wakealarm(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t n)
{
 ssize_t retval;
 unsigned long now, alarm;
 struct rtc_wkalrm alm;
 struct rtc_device *rtc = to_rtc_device(dev);
 char *buf_ptr;
 int adjust = 0;




 retval = rtc_read_time(rtc, &alm.time);
 if (retval < 0)
  return retval;
 rtc_tm_to_time(&alm.time, &now);

 buf_ptr = (char *)buf;
 if (*buf_ptr == '+') {
  buf_ptr++;
  adjust = 1;
 }
 alarm = simple_strtoul(buf_ptr, ((void*)0), 0);
 if (adjust) {
  alarm += now;
 }
 if (alarm > now) {




  retval = rtc_read_alarm(rtc, &alm);
  if (retval < 0)
   return retval;
  if (alm.enabled)
   return -EBUSY;

  alm.enabled = 1;
 } else {
  alm.enabled = 0;




  alarm = now + 300;
 }
 rtc_time_to_tm(alarm, &alm.time);

 retval = rtc_set_alarm(rtc, &alm);
 return (retval < 0) ? retval : n;
}
