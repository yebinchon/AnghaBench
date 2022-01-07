
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct gendisk {scalar_t__ private_data; TYPE_4__* queue; } ;
struct block_device {struct gendisk* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_9__ {TYPE_5__** LogicalDeviceInformation; } ;
struct TYPE_8__ {TYPE_1__* LogicalDriveInformation; } ;
struct TYPE_12__ {scalar_t__ FirmwareType; int * disks; TYPE_3__ V2; TYPE_2__ V1; } ;
struct TYPE_11__ {scalar_t__ LogicalDeviceState; } ;
struct TYPE_10__ {TYPE_6__* queuedata; } ;
struct TYPE_7__ {scalar_t__ LogicalDriveState; } ;
typedef TYPE_5__ DAC960_V2_LogicalDeviceInfo_T ;
typedef TYPE_6__ DAC960_Controller_T ;


 scalar_t__ DAC960_V1_Controller ;
 scalar_t__ DAC960_V1_LogicalDrive_Offline ;
 scalar_t__ DAC960_V2_LogicalDevice_Offline ;
 int ENXIO ;
 int check_disk_change (struct block_device*) ;
 int get_capacity (int ) ;

__attribute__((used)) static int DAC960_open(struct block_device *bdev, fmode_t mode)
{
 struct gendisk *disk = bdev->bd_disk;
 DAC960_Controller_T *p = disk->queue->queuedata;
 int drive_nr = (long)disk->private_data;

 if (p->FirmwareType == DAC960_V1_Controller) {
  if (p->V1.LogicalDriveInformation[drive_nr].
      LogicalDriveState == DAC960_V1_LogicalDrive_Offline)
   return -ENXIO;
 } else {
  DAC960_V2_LogicalDeviceInfo_T *i =
   p->V2.LogicalDeviceInformation[drive_nr];
  if (!i || i->LogicalDeviceState == DAC960_V2_LogicalDevice_Offline)
   return -ENXIO;
 }

 check_disk_change(bdev);

 if (!get_capacity(p->disks[drive_nr]))
  return -ENXIO;
 return 0;
}
