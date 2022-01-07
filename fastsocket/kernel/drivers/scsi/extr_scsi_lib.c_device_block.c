
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int scsi_internal_device_block (struct scsi_device*) ;

__attribute__((used)) static void
device_block(struct scsi_device *sdev, void *data)
{
 scsi_internal_device_block(sdev);
}
