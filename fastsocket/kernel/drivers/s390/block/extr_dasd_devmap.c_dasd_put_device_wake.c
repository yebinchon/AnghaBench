
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;


 int dasd_delete_wq ;
 int wake_up (int *) ;

void
dasd_put_device_wake(struct dasd_device *device)
{
 wake_up(&dasd_delete_wq);
}
