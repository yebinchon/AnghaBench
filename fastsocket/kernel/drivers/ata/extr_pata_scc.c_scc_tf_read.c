
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_taskfile {int flags; int ctl; void* hob_lbah; void* hob_lbam; void* hob_lbal; void* hob_nsect; void* hob_feature; void* device; void* lbah; void* lbam; void* lbal; void* nsect; void* feature; int command; } ;
struct ata_ioports {int ctl_addr; int lbah_addr; int lbam_addr; int lbal_addr; int nsect_addr; int error_addr; int device_addr; } ;
struct ata_port {int last_ctl; struct ata_ioports ioaddr; } ;


 int ATA_HOB ;
 int ATA_TFLAG_LBA48 ;
 void* in_be32 (int ) ;
 int out_be32 (int ,int) ;
 int scc_check_status (struct ata_port*) ;

__attribute__((used)) static void scc_tf_read (struct ata_port *ap, struct ata_taskfile *tf)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;

 tf->command = scc_check_status(ap);
 tf->feature = in_be32(ioaddr->error_addr);
 tf->nsect = in_be32(ioaddr->nsect_addr);
 tf->lbal = in_be32(ioaddr->lbal_addr);
 tf->lbam = in_be32(ioaddr->lbam_addr);
 tf->lbah = in_be32(ioaddr->lbah_addr);
 tf->device = in_be32(ioaddr->device_addr);

 if (tf->flags & ATA_TFLAG_LBA48) {
  out_be32(ioaddr->ctl_addr, tf->ctl | ATA_HOB);
  tf->hob_feature = in_be32(ioaddr->error_addr);
  tf->hob_nsect = in_be32(ioaddr->nsect_addr);
  tf->hob_lbal = in_be32(ioaddr->lbal_addr);
  tf->hob_lbam = in_be32(ioaddr->lbam_addr);
  tf->hob_lbah = in_be32(ioaddr->lbah_addr);
  out_be32(ioaddr->ctl_addr, tf->ctl);
  ap->last_ctl = tf->ctl;
 }
}
