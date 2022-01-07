
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;



__attribute__((used)) static int i2o_scsi_bios_param(struct scsi_device *sdev,
          struct block_device *dev, sector_t capacity,
          int *ip)
{
 int size;

 size = capacity;
 ip[0] = 64;
 ip[1] = 32;
 if ((ip[2] = size >> 11) > 1024) {
  ip[0] = 255;
  ip[1] = 63;
  ip[2] = size / (255 * 63);
 }
 return 0;
}
