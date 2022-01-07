
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_hour; int tm_min; int tm_sec; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ rtc_read_time (int ,struct rtc_time*) ;
 scalar_t__ sprintf (char*,char*,int,int,int) ;
 int to_rtc_device (struct device*) ;

__attribute__((used)) static ssize_t
rtc_sysfs_show_time(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 ssize_t retval;
 struct rtc_time tm;

 retval = rtc_read_time(to_rtc_device(dev), &tm);
 if (retval == 0) {
  retval = sprintf(buf, "%02d:%02d:%02d\n",
   tm.tm_hour, tm.tm_min, tm.tm_sec);
 }

 return retval;
}
