
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int reload_device; } ;


 int dasd_get_device (struct dasd_device*) ;
 int schedule_work (int *) ;

void dasd_reload_device(struct dasd_device *device)
{
 dasd_get_device(device);

 schedule_work(&device->reload_device);
}
