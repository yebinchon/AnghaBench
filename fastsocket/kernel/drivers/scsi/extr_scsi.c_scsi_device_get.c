
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {scalar_t__ sdev_state; TYPE_2__* host; int sdev_gendev; } ;
struct TYPE_4__ {TYPE_1__* hostt; } ;
struct TYPE_3__ {int module; } ;


 int ENXIO ;
 scalar_t__ SDEV_DEL ;
 int get_device (int *) ;
 int try_module_get (int ) ;

int scsi_device_get(struct scsi_device *sdev)
{
 if (sdev->sdev_state == SDEV_DEL)
  return -ENXIO;
 if (!get_device(&sdev->sdev_gendev))
  return -ENXIO;


 try_module_get(sdev->host->hostt->module);

 return 0;
}
