
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tf ;
struct ata_taskfile {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct ata_queued_cmd {int flags; int err_mask; TYPE_2__ result_tf; } ;
struct ata_port {int pflags; } ;
struct TYPE_3__ {int err_mask; } ;
struct ata_eh_context {TYPE_1__ i; } ;
struct ata_link {int sactive; struct ata_device* device; struct ata_eh_context eh_context; struct ata_port* ap; } ;
struct ata_device {int dummy; } ;


 int AC_ERR_DEV ;
 int AC_ERR_NCQ ;
 int ATA_MAX_QUEUE ;
 int ATA_PFLAG_FROZEN ;
 int ATA_QCFLAG_FAILED ;
 int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA ;
 int ATA_TFLAG_LBA48 ;
 int KERN_ERR ;
 struct ata_queued_cmd* __ata_qc_from_tag (struct ata_port*,int) ;
 int ata_eh_read_log_10h (struct ata_device*,int*,struct ata_taskfile*) ;
 int ata_link_printk (struct ata_link*,int ,char*,int) ;
 int memcpy (TYPE_2__*,struct ata_taskfile*,int) ;
 int memset (struct ata_taskfile*,int ,int) ;

void ata_eh_analyze_ncq_error(struct ata_link *link)
{
 struct ata_port *ap = link->ap;
 struct ata_eh_context *ehc = &link->eh_context;
 struct ata_device *dev = link->device;
 struct ata_queued_cmd *qc;
 struct ata_taskfile tf;
 int tag, rc;


 if (ap->pflags & ATA_PFLAG_FROZEN)
  return;


 if (!link->sactive || !(ehc->i.err_mask & AC_ERR_DEV))
  return;


 for (tag = 0; tag < ATA_MAX_QUEUE; tag++) {
  qc = __ata_qc_from_tag(ap, tag);

  if (!(qc->flags & ATA_QCFLAG_FAILED))
   continue;

  if (qc->err_mask)
   return;
 }


 memset(&tf, 0, sizeof(tf));
 rc = ata_eh_read_log_10h(dev, &tag, &tf);
 if (rc) {
  ata_link_printk(link, KERN_ERR, "failed to read log page 10h "
    "(errno=%d)\n", rc);
  return;
 }

 if (!(link->sactive & (1 << tag))) {
  ata_link_printk(link, KERN_ERR, "log page 10h reported "
    "inactive tag %d\n", tag);
  return;
 }


 qc = __ata_qc_from_tag(ap, tag);
 memcpy(&qc->result_tf, &tf, sizeof(tf));
 qc->result_tf.flags = ATA_TFLAG_ISADDR | ATA_TFLAG_LBA | ATA_TFLAG_LBA48;
 qc->err_mask |= AC_ERR_DEV | AC_ERR_NCQ;
 ehc->i.err_mask &= ~AC_ERR_DEV;
}
