
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int kick_validate; int reload_device; } ;


 int cancel_work_sync (int *) ;
 int dasd_alias_remove_device (struct dasd_device*) ;

__attribute__((used)) static int dasd_eckd_online_to_ready(struct dasd_device *device)
{
 cancel_work_sync(&device->reload_device);
 cancel_work_sync(&device->kick_validate);
 return dasd_alias_remove_device(device);
}
