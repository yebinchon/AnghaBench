
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef unsigned int sector_t ;
struct TYPE_2__ {int heads; int sectors; } ;


 int FALSE ;
 TYPE_1__* HD (unsigned int) ;
 int driver_name ;
 scalar_t__ ext_tran ;
 int printk (char*,int ,int,int,int) ;
 scalar_t__ scsicam_bios_param (struct block_device*,unsigned int,int*) ;

__attribute__((used)) static int u14_34f_bios_param(struct scsi_device *disk,
                 struct block_device *bdev, sector_t capacity, int *dkinfo) {
   unsigned int j = 0;
   unsigned int size = capacity;

   dkinfo[0] = HD(j)->heads;
   dkinfo[1] = HD(j)->sectors;
   dkinfo[2] = size / (HD(j)->heads * HD(j)->sectors);

   if (ext_tran && (scsicam_bios_param(bdev, capacity, dkinfo) < 0)) {
      dkinfo[0] = 255;
      dkinfo[1] = 63;
      dkinfo[2] = size / (dkinfo[0] * dkinfo[1]);
      }






   return FALSE;
}
