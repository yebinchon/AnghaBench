
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct drive_info TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct block_device {int bd_dev; } ;
typedef int sector_t ;
struct drive_info {unsigned short cylinders; unsigned char heads; unsigned char sectors; } ;


 scalar_t__ MAJOR (int ) ;
 int MINOR (int ) ;
 int Quantum ;
 scalar_t__ SCSI_DISK0_MAJOR ;
 int bios_major ;
 scalar_t__ bios_mem ;
 int bios_minor ;
 int kfree (unsigned char*) ;
 int memcpy_fromio (TYPE_1__*,scalar_t__,int) ;
 int printk (char*) ;
 unsigned char* scsi_bios_ptable (struct block_device*) ;

__attribute__((used)) static int fdomain_16x0_biosparam(struct scsi_device *sdev,
  struct block_device *bdev,
  sector_t capacity, int *info_array)
{
   int drive;
   int size = capacity;
   unsigned long offset;
   struct drive_info {
      unsigned short cylinders;
      unsigned char heads;
      unsigned char sectors;
   } i;
   if (MAJOR(bdev->bd_dev) != SCSI_DISK0_MAJOR) {
      printk("scsi: <fdomain> fdomain_16x0_biosparam: too many disks");
      return 0;
   }
   drive = MINOR(bdev->bd_dev) >> 4;

   if (bios_major == 2) {
      switch (Quantum) {
      case 2:


  offset = 0x1f33 + drive * 25;
  break;
      case 3:
  offset = 0x1f36 + drive * 15;
  break;
      case 4:
  offset = 0x1f34 + drive * 15;
  break;
      default:
  offset = 0x1f31 + drive * 25;
  break;
      }
      memcpy_fromio( &i, bios_mem + offset, sizeof( struct drive_info ) );
      info_array[0] = i.heads;
      info_array[1] = i.sectors;
      info_array[2] = i.cylinders;
   } else if (bios_major == 3
       && bios_minor >= 0
       && bios_minor < 4) {
      memcpy_fromio( &i, bios_mem + 0x1f71 + drive * 10,
       sizeof( struct drive_info ) );
      info_array[0] = i.heads + 1;
      info_array[1] = i.sectors;
      info_array[2] = i.cylinders;
   } else {

      unsigned char *p = scsi_bios_ptable(bdev);

      if (p && p[65] == 0xaa && p[64] == 0x55
   && p[4]) {
  info_array[0] = p[5] + 1;
  info_array[1] = p[6] & 0x3f;
      } else {





  if ((unsigned int)size >= 0x7e0000U) {
     info_array[0] = 0xff;
     info_array[1] = 0x3f;
  } else if ((unsigned int)size >= 0x200000U) {
     info_array[0] = 0x80;
     info_array[1] = 0x3f;
  } else {
     info_array[0] = 0x40;
     info_array[1] = 0x20;
  }
      }

      info_array[2] = (unsigned int)size / (info_array[0] * info_array[1] );
      kfree(p);
   }

   return 0;
}
