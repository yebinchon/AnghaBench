
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
typedef enum scsi_device_state { ____Placeholder_scsi_device_state } scsi_device_state ;


 int __scsi_internal_device_unblock (struct scsi_device*,int) ;

__attribute__((used)) static void
device_unblock(struct scsi_device *sdev, void *data)
{
 __scsi_internal_device_unblock(sdev, *(enum scsi_device_state *)data);
}
