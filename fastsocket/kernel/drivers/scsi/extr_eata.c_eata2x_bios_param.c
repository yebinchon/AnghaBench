
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef unsigned int sector_t ;


 int driver_name ;
 scalar_t__ ext_tran ;
 int printk (char*,int ,int,int,int) ;
 scalar_t__ scsicam_bios_param (struct block_device*,unsigned int,int*) ;

int eata2x_bios_param(struct scsi_device *sdev, struct block_device *bdev,
        sector_t capacity, int *dkinfo)
{
 unsigned int size = capacity;

 if (ext_tran || (scsicam_bios_param(bdev, capacity, dkinfo) < 0)) {
  dkinfo[0] = 255;
  dkinfo[1] = 63;
  dkinfo[2] = size / (dkinfo[0] * dkinfo[1]);
 }





 return 0;
}
