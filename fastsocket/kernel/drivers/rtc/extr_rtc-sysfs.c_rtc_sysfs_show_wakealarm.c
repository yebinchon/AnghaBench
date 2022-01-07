
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int time; scalar_t__ enabled; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ rtc_read_alarm (int ,struct rtc_wkalrm*) ;
 int rtc_tm_to_time (int *,unsigned long*) ;
 scalar_t__ sprintf (char*,char*,unsigned long) ;
 int to_rtc_device (struct device*) ;

__attribute__((used)) static ssize_t
rtc_sysfs_show_wakealarm(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 ssize_t retval;
 unsigned long alarm;
 struct rtc_wkalrm alm;
 retval = rtc_read_alarm(to_rtc_device(dev), &alm);
 if (retval == 0 && alm.enabled) {
  rtc_tm_to_time(&alm.time, &alarm);
  retval = sprintf(buf, "%lu\n", alarm);
 }

 return retval;
}
