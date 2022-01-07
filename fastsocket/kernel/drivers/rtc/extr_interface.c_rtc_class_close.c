
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dev; int owner; } ;


 int module_put (int ) ;
 int put_device (int *) ;

void rtc_class_close(struct rtc_device *rtc)
{
 module_put(rtc->owner);
 put_device(&rtc->dev);
}
