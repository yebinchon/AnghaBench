
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; int tm_mon; int tm_mday; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ rtc_read_time (int ,struct rtc_time*) ;
 scalar_t__ sprintf (char*,char*,int,int,int) ;
 int to_rtc_device (struct device*) ;

__attribute__((used)) static ssize_t
rtc_sysfs_show_date(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 ssize_t retval;
 struct rtc_time tm;

 retval = rtc_read_time(to_rtc_device(dev), &tm);
 if (retval == 0) {
  retval = sprintf(buf, "%04d-%02d-%02d\n",
   tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday);
 }

 return retval;
}
