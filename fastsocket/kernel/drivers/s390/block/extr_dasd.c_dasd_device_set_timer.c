
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int timer; } ;


 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void dasd_device_set_timer(struct dasd_device *device, int expires)
{
 if (expires == 0)
  del_timer(&device->timer);
 else
  mod_timer(&device->timer, jiffies + expires);
}
