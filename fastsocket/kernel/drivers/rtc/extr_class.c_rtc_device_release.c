
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int id; } ;
struct device {int dummy; } ;


 int idr_lock ;
 int idr_remove (int *,int ) ;
 int kfree (struct rtc_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtc_idr ;
 struct rtc_device* to_rtc_device (struct device*) ;

__attribute__((used)) static void rtc_device_release(struct device *dev)
{
 struct rtc_device *rtc = to_rtc_device(dev);
 mutex_lock(&idr_lock);
 idr_remove(&rtc_idr, rtc->id);
 mutex_unlock(&idr_lock);
 kfree(rtc);
}
