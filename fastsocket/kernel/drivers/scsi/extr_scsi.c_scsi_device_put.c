
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {int sdev_gendev; TYPE_2__* host; } ;
struct module {int dummy; } ;
struct TYPE_4__ {TYPE_1__* hostt; } ;
struct TYPE_3__ {struct module* module; } ;


 int module_put (struct module*) ;
 scalar_t__ module_refcount (struct module*) ;
 int put_device (int *) ;

void scsi_device_put(struct scsi_device *sdev)
{
 put_device(&sdev->sdev_gendev);
}
