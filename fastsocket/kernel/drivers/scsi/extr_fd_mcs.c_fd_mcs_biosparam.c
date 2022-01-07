
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int kfree (unsigned char*) ;
 unsigned char* scsi_bios_ptable (struct block_device*) ;

__attribute__((used)) static int fd_mcs_biosparam(struct scsi_device * disk, struct block_device *bdev,
       sector_t capacity, int *info_array)
{
 unsigned char *p = scsi_bios_ptable(bdev);
 int size = capacity;




 if (p && p[65] == 0xaa && p[64] == 0x55
     && p[4]) {
  info_array[0] = p[5] + 1;
  info_array[1] = p[6] & 0x3f;
 } else {



  if ((unsigned int) size >= 0x7e0000U)
  {
   info_array[0] = 0xff;
   info_array[1] = 0x3f;
  } else if ((unsigned int) size >= 0x200000U) {
   info_array[0] = 0x80;
   info_array[1] = 0x3f;
  } else {
   info_array[0] = 0x40;
   info_array[1] = 0x20;
  }
 }

 info_array[2] = (unsigned int) size / (info_array[0] * info_array[1]);
 kfree(p);
 return 0;
}
