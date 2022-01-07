
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int kfree (unsigned char*) ;
 unsigned char* scsi_bios_ptable (struct block_device*) ;
 int scsi_partsize (unsigned char*,unsigned long,unsigned int*,unsigned int*,unsigned int*) ;
 int setsize (unsigned long,unsigned int*,unsigned int*,unsigned int*) ;

int scsicam_bios_param(struct block_device *bdev, sector_t capacity, int *ip)
{
 unsigned char *p;
 u64 capacity64 = capacity;
 int ret;

 p = scsi_bios_ptable(bdev);
 if (!p)
  return -1;


 ret = scsi_partsize(p, (unsigned long)capacity, (unsigned int *)ip + 2,
          (unsigned int *)ip + 0, (unsigned int *)ip + 1);
 kfree(p);

 if (ret == -1 && capacity64 < (1ULL << 32)) {



  ret = setsize((unsigned long)capacity, (unsigned int *)ip + 2,
         (unsigned int *)ip + 0, (unsigned int *)ip + 1);
 }



 if (ret || ip[0] > 255 || ip[1] > 63) {
  if ((capacity >> 11) > 65534) {
   ip[0] = 255;
   ip[1] = 63;
  } else {
   ip[0] = 64;
   ip[1] = 32;
  }

  if (capacity > 65535*63*255)
   ip[2] = 65535;
  else
   ip[2] = (unsigned long)capacity / (ip[0] * ip[1]);
 }

 return 0;
}
