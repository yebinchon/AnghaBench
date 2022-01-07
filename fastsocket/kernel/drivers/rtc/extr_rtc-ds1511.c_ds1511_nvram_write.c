
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef size_t loff_t ;


 size_t DS1511_BME ;
 int DS1511_RAMADDR_LSB ;
 int DS1511_RAMDATA ;
 size_t DS1511_RAM_MAX ;
 int RTC_CMD ;
 size_t rtc_read (int ) ;
 int rtc_write (size_t,int ) ;

__attribute__((used)) static ssize_t
ds1511_nvram_write(struct file *filp, struct kobject *kobj,
     struct bin_attribute *bin_attr,
     char *buf, loff_t pos, size_t size)
{
 ssize_t count;





 if (size > 1) {
  rtc_write((rtc_read(RTC_CMD) | DS1511_BME), RTC_CMD);
 }
 if (pos > DS1511_RAM_MAX) {
  pos = DS1511_RAM_MAX;
 }
 if (size + pos > DS1511_RAM_MAX + 1) {
  size = DS1511_RAM_MAX - pos + 1;
 }
 rtc_write(pos, DS1511_RAMADDR_LSB);
 for (count = 0; size > 0; count++, size--) {
  rtc_write(*buf++, DS1511_RAMDATA);
 }
 if (count > 1) {
  rtc_write((rtc_read(RTC_CMD) & ~DS1511_BME), RTC_CMD);
 }
 return count;
}
