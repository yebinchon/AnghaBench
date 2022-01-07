
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {unsigned long irq_data; int irq_queue; } ;
struct file {struct rtc_device* private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int rtc_dev_poll(struct file *file, poll_table *wait)
{
 struct rtc_device *rtc = file->private_data;
 unsigned long data;

 poll_wait(file, &rtc->irq_queue, wait);

 data = rtc->irq_data;

 return (data != 0) ? (POLLIN | POLLRDNORM) : 0;
}
