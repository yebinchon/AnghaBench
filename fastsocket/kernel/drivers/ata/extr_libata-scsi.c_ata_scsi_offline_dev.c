
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {scalar_t__ sdev; } ;


 int SDEV_OFFLINE ;
 int scsi_device_set_state (scalar_t__,int ) ;

int ata_scsi_offline_dev(struct ata_device *dev)
{
 if (dev->sdev) {
  scsi_device_set_state(dev->sdev, SDEV_OFFLINE);
  return 1;
 }
 return 0;
}
