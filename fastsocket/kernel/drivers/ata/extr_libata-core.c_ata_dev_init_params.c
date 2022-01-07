
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ata_taskfile {int flags; int nsect; int device; int feature; int protocol; int command; } ;
struct ata_device {int dummy; } ;


 unsigned int AC_ERR_DEV ;
 unsigned int AC_ERR_INVALID ;
 int ATA_ABORTED ;
 int ATA_CMD_INIT_DEV_PARAMS ;
 int ATA_PROT_NODATA ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int DMA_NONE ;
 int DPRINTK (char*,...) ;
 unsigned int ata_exec_internal (struct ata_device*,struct ata_taskfile*,int *,int ,int *,int ,int ) ;
 int ata_tf_init (struct ata_device*,struct ata_taskfile*) ;

__attribute__((used)) static unsigned int ata_dev_init_params(struct ata_device *dev,
     u16 heads, u16 sectors)
{
 struct ata_taskfile tf;
 unsigned int err_mask;


 if (sectors < 1 || sectors > 255 || heads < 1 || heads > 16)
  return AC_ERR_INVALID;


 DPRINTK("init dev params \n");

 ata_tf_init(dev, &tf);
 tf.command = ATA_CMD_INIT_DEV_PARAMS;
 tf.flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE;
 tf.protocol = ATA_PROT_NODATA;
 tf.nsect = sectors;
 tf.device |= (heads - 1) & 0x0f;

 err_mask = ata_exec_internal(dev, &tf, ((void*)0), DMA_NONE, ((void*)0), 0, 0);



 if (err_mask == AC_ERR_DEV && (tf.feature & ATA_ABORTED))
  err_mask = 0;

 DPRINTK("EXIT, err_mask=%x\n", err_mask);
 return err_mask;
}
