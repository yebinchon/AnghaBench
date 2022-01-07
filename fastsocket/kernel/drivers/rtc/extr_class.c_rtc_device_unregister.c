
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dev; int ops_lock; int * ops; } ;


 int device_unregister (int *) ;
 int * get_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int rtc_dev_del_device (struct rtc_device*) ;
 int rtc_proc_del_device (struct rtc_device*) ;
 int rtc_sysfs_del_device (struct rtc_device*) ;

void rtc_device_unregister(struct rtc_device *rtc)
{
 if (get_device(&rtc->dev) != ((void*)0)) {
  mutex_lock(&rtc->ops_lock);



  rtc_sysfs_del_device(rtc);
  rtc_dev_del_device(rtc);
  rtc_proc_del_device(rtc);
  device_unregister(&rtc->dev);
  rtc->ops = ((void*)0);
  mutex_unlock(&rtc->ops_lock);
  put_device(&rtc->dev);
 }
}
