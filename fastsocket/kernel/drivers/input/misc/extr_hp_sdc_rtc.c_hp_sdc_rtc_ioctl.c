
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; int usec; int sec; } ;
struct rtc_time {int tm_hour; int tm_min; int tm_sec; unsigned char tm_mday; int tm_mon; int tm_year; } ;
struct inode {int dummy; } ;
struct hp_sdc_rtc_time {int tm_hour; int tm_min; int tm_sec; unsigned char tm_mday; int tm_mon; int tm_year; } ;
struct file {int dummy; } ;


 int CAP_SYS_TIME ;
 int EACCES ;
 int EFAULT ;
 int EINVAL ;
 int capable (int ) ;
 int copy_from_user (struct rtc_time*,struct rtc_time*,int) ;
 scalar_t__ copy_to_user (void*,struct rtc_time*,int) ;
 int * days_in_mo ;
 unsigned int eH ;
 unsigned long epoch ;
 unsigned long hp_sdc_rtc_freq ;
 int hp_sdc_rtc_read_bbrtc (struct rtc_time*) ;
 int hp_sdc_rtc_read_mt (struct timeval*) ;
 int hp_sdc_rtc_set_ct (struct timeval*) ;
 int hp_sdc_rtc_set_mt (struct timeval*) ;
 int put_user (unsigned long,unsigned long*) ;

__attribute__((used)) static int hp_sdc_rtc_ioctl(struct inode *inode, struct file *file,
       unsigned int cmd, unsigned long arg)
{

 return -EINVAL;
}
