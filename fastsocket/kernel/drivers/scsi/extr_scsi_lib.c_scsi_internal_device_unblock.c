
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int SDEV_RUNNING ;
 int __scsi_internal_device_unblock (struct scsi_device*,int ) ;

int
scsi_internal_device_unblock(struct scsi_device *sdev)
{
 return __scsi_internal_device_unblock(sdev, SDEV_RUNNING);
}
