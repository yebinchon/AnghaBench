
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct ata_taskfile {unsigned int lbal; unsigned int nsect; unsigned int hob_nsect; int flags; int protocol; int command; } ;
struct ata_device {int dummy; } ;


 int ATA_CMD_READ_LOG_EXT ;
 int ATA_PROT_PIO ;
 unsigned int ATA_SECT_SIZE ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA48 ;
 int DMA_FROM_DEVICE ;
 int DPRINTK (char*,unsigned int) ;
 unsigned int ata_exec_internal (struct ata_device*,struct ata_taskfile*,int *,int ,void*,unsigned int,int ) ;
 int ata_tf_init (struct ata_device*,struct ata_taskfile*) ;

__attribute__((used)) static unsigned int ata_read_log_page(struct ata_device *dev,
          u8 page, void *buf, unsigned int sectors)
{
 struct ata_taskfile tf;
 unsigned int err_mask;

 DPRINTK("read log page - page %d\n", page);

 ata_tf_init(dev, &tf);
 tf.command = ATA_CMD_READ_LOG_EXT;
 tf.lbal = page;
 tf.nsect = sectors;
 tf.hob_nsect = sectors >> 8;
 tf.flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_LBA48 | ATA_TFLAG_DEVICE;
 tf.protocol = ATA_PROT_PIO;

 err_mask = ata_exec_internal(dev, &tf, ((void*)0), DMA_FROM_DEVICE,
         buf, sectors * ATA_SECT_SIZE, 0);

 DPRINTK("EXIT, err_mask=%x\n", err_mask);
 return err_mask;
}
