
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct ata_taskfile {int flags; void* nsect; int protocol; void* feature; int command; } ;
struct ata_device {int dummy; } ;


 int ATA_CMD_SET_FEATURES ;
 int ATA_PROT_NODATA ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int DMA_NONE ;
 int DPRINTK (char*,...) ;
 unsigned int ata_exec_internal (struct ata_device*,struct ata_taskfile*,int *,int ,int *,int ,int ) ;
 int ata_tf_init (struct ata_device*,struct ata_taskfile*) ;

__attribute__((used)) static unsigned int ata_dev_set_feature(struct ata_device *dev, u8 enable,
     u8 feature)
{
 struct ata_taskfile tf;
 unsigned int err_mask;


 DPRINTK("set features - SATA features\n");

 ata_tf_init(dev, &tf);
 tf.command = ATA_CMD_SET_FEATURES;
 tf.feature = enable;
 tf.flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE;
 tf.protocol = ATA_PROT_NODATA;
 tf.nsect = feature;

 err_mask = ata_exec_internal(dev, &tf, ((void*)0), DMA_NONE, ((void*)0), 0, 0);

 DPRINTK("EXIT, err_mask=%x\n", err_mask);
 return err_mask;
}
