
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int use_10_for_rw; int use_10_for_ms; int max_device_blocked; } ;



__attribute__((used)) static void ata_scsi_sdev_config(struct scsi_device *sdev)
{
 sdev->use_10_for_rw = 1;
 sdev->use_10_for_ms = 1;






 sdev->max_device_blocked = 1;
}
