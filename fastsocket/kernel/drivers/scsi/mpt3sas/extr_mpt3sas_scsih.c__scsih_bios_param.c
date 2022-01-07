
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int sector_div (int,int) ;

__attribute__((used)) static int
_scsih_bios_param(struct scsi_device *sdev, struct block_device *bdev,
 sector_t capacity, int params[])
{
 int heads;
 int sectors;
 sector_t cylinders;
 ulong dummy;

 heads = 64;
 sectors = 32;

 dummy = heads * sectors;
 cylinders = capacity;
 sector_div(cylinders, dummy);





 if ((ulong)capacity >= 0x200000) {
  heads = 255;
  sectors = 63;
  dummy = heads * sectors;
  cylinders = capacity;
  sector_div(cylinders, dummy);
 }


 params[0] = heads;
 params[1] = sectors;
 params[2] = cylinders;

 return 0;
}
