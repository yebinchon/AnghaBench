
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_taskfile {int protocol; int flags; int command; } ;
struct ata_device {int dummy; } ;


 int ATA_PROT_NODATA ;
 int ATA_TFLAG_DEVICE ;
 int DMA_NONE ;
 unsigned int ata_exec_internal (struct ata_device*,struct ata_taskfile*,int *,int ,int *,int ,int ) ;
 int ata_tf_init (struct ata_device*,struct ata_taskfile*) ;

unsigned int ata_do_simple_cmd(struct ata_device *dev, u8 cmd)
{
 struct ata_taskfile tf;

 ata_tf_init(dev, &tf);

 tf.command = cmd;
 tf.flags |= ATA_TFLAG_DEVICE;
 tf.protocol = ATA_PROT_NODATA;

 return ata_exec_internal(dev, &tf, ((void*)0), DMA_NONE, ((void*)0), 0, 0);
}
