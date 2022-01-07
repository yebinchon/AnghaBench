
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int async_queue; } ;
struct file {struct rtc_device* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int rtc_dev_fasync(int fd, struct file *file, int on)
{
 struct rtc_device *rtc = file->private_data;
 return fasync_helper(fd, file, on, &rtc->async_queue);
}
