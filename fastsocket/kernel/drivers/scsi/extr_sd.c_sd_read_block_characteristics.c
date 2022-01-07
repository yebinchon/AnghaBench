
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct scsi_disk {TYPE_1__* disk; int device; } ;
struct TYPE_2__ {int queue; } ;


 int GFP_KERNEL ;
 int QUEUE_FLAG_NONROT ;
 int get_unaligned_be16 (unsigned char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int const,int ) ;
 int queue_flag_set_unlocked (int ,int ) ;
 scalar_t__ scsi_get_vpd_page (int ,int,unsigned char*,int const) ;

__attribute__((used)) static void sd_read_block_characteristics(struct scsi_disk *sdkp)
{
 unsigned char *buffer;
 u16 rot;
 const int vpd_len = 64;

 buffer = kmalloc(vpd_len, GFP_KERNEL);

 if (!buffer ||

     scsi_get_vpd_page(sdkp->device, 0xb1, buffer, vpd_len))
  goto out;

 rot = get_unaligned_be16(&buffer[4]);

 if (rot == 1)
  queue_flag_set_unlocked(QUEUE_FLAG_NONROT, sdkp->disk->queue);

 out:
 kfree(buffer);
}
