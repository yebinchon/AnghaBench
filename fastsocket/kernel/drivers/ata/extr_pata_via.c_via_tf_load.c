
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_port {scalar_t__ cached_device; } ;
struct ata_taskfile {unsigned int flags; scalar_t__ ctl; scalar_t__ device; scalar_t__ hob_feature; scalar_t__ hob_nsect; scalar_t__ hob_lbal; scalar_t__ hob_lbam; scalar_t__ hob_lbah; scalar_t__ feature; scalar_t__ nsect; scalar_t__ lbal; scalar_t__ lbam; scalar_t__ lbah; } ;
struct ata_ioports {int lbah_addr; int lbam_addr; int lbal_addr; int nsect_addr; int feature_addr; int ctl_addr; int device_addr; } ;
struct ata_port {scalar_t__ last_ctl; struct via_port* private_data; struct ata_ioports ioaddr; } ;


 int ATA_TFLAG_DEVICE ;
 unsigned int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA48 ;
 int VPRINTK (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int WARN_ON_ONCE (int) ;
 int ata_wait_idle (struct ata_port*) ;
 int iowrite8 (scalar_t__,int ) ;

__attribute__((used)) static void via_tf_load(struct ata_port *ap, const struct ata_taskfile *tf)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;
 struct via_port *vp = ap->private_data;
 unsigned int is_addr = tf->flags & ATA_TFLAG_ISADDR;
 int newctl = 0;

 if (tf->ctl != ap->last_ctl) {
  iowrite8(tf->ctl, ioaddr->ctl_addr);
  ap->last_ctl = tf->ctl;
  ata_wait_idle(ap);
  newctl = 1;
 }

 if (tf->flags & ATA_TFLAG_DEVICE) {
  iowrite8(tf->device, ioaddr->device_addr);
  vp->cached_device = tf->device;
 } else if (newctl)
  iowrite8(vp->cached_device, ioaddr->device_addr);

 if (is_addr && (tf->flags & ATA_TFLAG_LBA48)) {
  WARN_ON_ONCE(!ioaddr->ctl_addr);
  iowrite8(tf->hob_feature, ioaddr->feature_addr);
  iowrite8(tf->hob_nsect, ioaddr->nsect_addr);
  iowrite8(tf->hob_lbal, ioaddr->lbal_addr);
  iowrite8(tf->hob_lbam, ioaddr->lbam_addr);
  iowrite8(tf->hob_lbah, ioaddr->lbah_addr);
  VPRINTK("hob: feat 0x%X nsect 0x%X, lba 0x%X 0x%X 0x%X\n",
   tf->hob_feature,
   tf->hob_nsect,
   tf->hob_lbal,
   tf->hob_lbam,
   tf->hob_lbah);
 }

 if (is_addr) {
  iowrite8(tf->feature, ioaddr->feature_addr);
  iowrite8(tf->nsect, ioaddr->nsect_addr);
  iowrite8(tf->lbal, ioaddr->lbal_addr);
  iowrite8(tf->lbam, ioaddr->lbam_addr);
  iowrite8(tf->lbah, ioaddr->lbah_addr);
  VPRINTK("feat 0x%X nsect 0x%X lba 0x%X 0x%X 0x%X\n",
   tf->feature,
   tf->nsect,
   tf->lbal,
   tf->lbam,
   tf->lbah);
 }

 ata_wait_idle(ap);
}
