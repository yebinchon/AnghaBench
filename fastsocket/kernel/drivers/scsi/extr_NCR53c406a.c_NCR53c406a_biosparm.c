
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int DEB (int ) ;
 int printk (char*) ;

__attribute__((used)) static int NCR53c406a_biosparm(struct scsi_device *disk,
                               struct block_device *dev,
          sector_t capacity, int *info_array)
{
 int size;

 DEB(printk("NCR53c406a_biosparm called\n"));

 size = capacity;
 info_array[0] = 64;
 info_array[1] = 32;
 info_array[2] = size >> 11;
 if (info_array[2] > 1024) {
  info_array[0] = 255;
  info_array[1] = 63;
  info_array[2] = size / (255 * 63);
 }
 return 0;
}
