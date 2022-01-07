
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device_handler {scalar_t__ detach; } ;
struct scsi_device {TYPE_1__* scsi_dh_data; } ;
struct TYPE_2__ {int kref; struct scsi_device_handler* scsi_dh; } ;


 int __detach_handler ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void scsi_dh_handler_detach(struct scsi_device *sdev,
       struct scsi_device_handler *scsi_dh)
{
 if (!sdev->scsi_dh_data)
  return;

 if (scsi_dh && scsi_dh != sdev->scsi_dh_data->scsi_dh)
  return;

 if (!scsi_dh)
  scsi_dh = sdev->scsi_dh_data->scsi_dh;

 if (scsi_dh && scsi_dh->detach)
  kref_put(&sdev->scsi_dh_data->kref, __detach_handler);
}
