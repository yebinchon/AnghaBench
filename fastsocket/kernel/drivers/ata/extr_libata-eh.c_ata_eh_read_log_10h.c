
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ata_taskfile {int command; int feature; int lbal; int lbam; int lbah; int device; int hob_lbal; int hob_lbam; int hob_lbah; int nsect; int hob_nsect; } ;
struct ata_device {TYPE_2__* link; } ;
struct TYPE_4__ {TYPE_1__* ap; } ;
struct TYPE_3__ {int* sector_buf; } ;


 int ATA_LOG_SATA_NCQ ;
 int ATA_SECT_SIZE ;
 int EIO ;
 int ENOENT ;
 int KERN_WARNING ;
 int ata_dev_printk (struct ata_device*,int ,char*,int) ;
 unsigned int ata_read_log_page (struct ata_device*,int ,int*,int) ;

__attribute__((used)) static int ata_eh_read_log_10h(struct ata_device *dev,
          int *tag, struct ata_taskfile *tf)
{
 u8 *buf = dev->link->ap->sector_buf;
 unsigned int err_mask;
 u8 csum;
 int i;

 err_mask = ata_read_log_page(dev, ATA_LOG_SATA_NCQ, buf, 1);
 if (err_mask)
  return -EIO;

 csum = 0;
 for (i = 0; i < ATA_SECT_SIZE; i++)
  csum += buf[i];
 if (csum)
  ata_dev_printk(dev, KERN_WARNING,
          "invalid checksum 0x%x on log page 10h\n", csum);

 if (buf[0] & 0x80)
  return -ENOENT;

 *tag = buf[0] & 0x1f;

 tf->command = buf[2];
 tf->feature = buf[3];
 tf->lbal = buf[4];
 tf->lbam = buf[5];
 tf->lbah = buf[6];
 tf->device = buf[7];
 tf->hob_lbal = buf[8];
 tf->hob_lbam = buf[9];
 tf->hob_lbah = buf[10];
 tf->nsect = buf[12];
 tf->hob_nsect = buf[13];

 return 0;
}
