
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int sector_div (int,int) ;

int sas_bios_param(struct scsi_device *scsi_dev,
     struct block_device *bdev,
     sector_t capacity, int *hsc)
{
 hsc[0] = 255;
 hsc[1] = 63;
 sector_div(capacity, 255*63);
 hsc[2] = capacity;

 return 0;
}
