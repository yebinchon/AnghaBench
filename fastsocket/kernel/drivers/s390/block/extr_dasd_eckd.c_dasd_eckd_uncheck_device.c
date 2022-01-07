
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_eckd_private {int * conf_data; scalar_t__ conf_len; int * gneq; int * vdsneq; int * sneq; int * ned; } ;
struct dasd_device {scalar_t__ private; } ;


 int dasd_alias_disconnect_device_from_lcu (struct dasd_device*) ;
 int kfree (int *) ;

__attribute__((used)) static void dasd_eckd_uncheck_device(struct dasd_device *device)
{
 struct dasd_eckd_private *private;

 private = (struct dasd_eckd_private *) device->private;
 dasd_alias_disconnect_device_from_lcu(device);
 private->ned = ((void*)0);
 private->sneq = ((void*)0);
 private->vdsneq = ((void*)0);
 private->gneq = ((void*)0);
 private->conf_len = 0;
 kfree(private->conf_data);
 private->conf_data = ((void*)0);
}
