
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct ata_queued_cmd {int flags; int err_mask; struct ata_device* dev; int result_tf; } ;
struct TYPE_5__ {unsigned int err_mask; } ;
struct TYPE_6__ {TYPE_1__ i; } ;
struct TYPE_7__ {TYPE_2__ eh_context; } ;
struct ata_port {int pflags; TYPE_3__ link; } ;
struct TYPE_8__ {int flags; int action; int err_mask; int* dev_action; struct ata_device* dev; int probe_mask; int serror; } ;
struct ata_eh_context {TYPE_4__ i; } ;
struct ata_link {struct ata_device* device; struct ata_eh_context eh_context; struct ata_port* ap; } ;
struct ata_device {size_t devno; int flags; } ;


 int AC_ERR_ATA_BUS ;
 int AC_ERR_DEV ;
 unsigned int AC_ERR_HSM ;
 int AC_ERR_INVALID ;
 int AC_ERR_MEDIA ;
 int AC_ERR_OTHER ;
 unsigned int AC_ERR_TIMEOUT ;
 int ATA_ALL_DEVICES ;
 int ATA_DFLAG_DUBIOUS_XFER ;
 unsigned int ATA_EFLAG_DUBIOUS_XFER ;
 unsigned int ATA_EFLAG_IS_IO ;
 int ATA_EHI_NO_AUTOPSY ;
 int ATA_EH_PERDEV_MASK ;
 int ATA_EH_RESET ;
 int ATA_EH_REVALIDATE ;
 int ATA_MAX_QUEUE ;
 int ATA_PFLAG_FROZEN ;
 int ATA_QCFLAG_FAILED ;
 int ATA_QCFLAG_IO ;
 int ATA_QCFLAG_RETRY ;
 int ATA_QCFLAG_SENSE_VALID ;
 int DPRINTK (char*) ;
 int EOPNOTSUPP ;
 int SCR_ERROR ;
 struct ata_queued_cmd* __ata_qc_from_tag (struct ata_port*,int) ;
 scalar_t__ ata_dev_enabled (struct ata_device*) ;
 struct ata_link* ata_dev_phys_link (struct ata_device*) ;
 int ata_eh_analyze_ncq_error (struct ata_link*) ;
 int ata_eh_analyze_serror (struct ata_link*) ;
 int ata_eh_analyze_tf (struct ata_queued_cmd*,int *) ;
 int ata_eh_speed_down (struct ata_device*,unsigned int,unsigned int) ;
 int ata_is_host_link (struct ata_link*) ;
 int ata_link_max_devices (struct ata_link*) ;
 int sata_scr_read (struct ata_link*,int ,int *) ;

__attribute__((used)) static void ata_eh_link_autopsy(struct ata_link *link)
{
 struct ata_port *ap = link->ap;
 struct ata_eh_context *ehc = &link->eh_context;
 struct ata_device *dev;
 unsigned int all_err_mask = 0, eflags = 0;
 int tag;
 u32 serror;
 int rc;

 DPRINTK("ENTER\n");

 if (ehc->i.flags & ATA_EHI_NO_AUTOPSY)
  return;


 rc = sata_scr_read(link, SCR_ERROR, &serror);
 if (rc == 0) {
  ehc->i.serror |= serror;
  ata_eh_analyze_serror(link);
 } else if (rc != -EOPNOTSUPP) {

  ehc->i.probe_mask |= ATA_ALL_DEVICES;
  ehc->i.action |= ATA_EH_RESET;
  ehc->i.err_mask |= AC_ERR_OTHER;
 }


 ata_eh_analyze_ncq_error(link);


 if (ehc->i.err_mask & ~AC_ERR_OTHER)
  ehc->i.err_mask &= ~AC_ERR_OTHER;

 all_err_mask |= ehc->i.err_mask;

 for (tag = 0; tag < ATA_MAX_QUEUE; tag++) {
  struct ata_queued_cmd *qc = __ata_qc_from_tag(ap, tag);

  if (!(qc->flags & ATA_QCFLAG_FAILED) ||
      ata_dev_phys_link(qc->dev) != link)
   continue;


  qc->err_mask |= ehc->i.err_mask;


  ehc->i.action |= ata_eh_analyze_tf(qc, &qc->result_tf);


  if (qc->err_mask & AC_ERR_ATA_BUS)
   qc->err_mask &= ~(AC_ERR_DEV | AC_ERR_MEDIA |
       AC_ERR_INVALID);


  if (qc->err_mask & ~AC_ERR_OTHER)
   qc->err_mask &= ~AC_ERR_OTHER;


  if (qc->flags & ATA_QCFLAG_SENSE_VALID)
   qc->err_mask &= ~(AC_ERR_DEV | AC_ERR_OTHER);


  if (qc->flags & ATA_QCFLAG_IO ||
      (!(qc->err_mask & AC_ERR_INVALID) &&
       qc->err_mask != AC_ERR_DEV))
   qc->flags |= ATA_QCFLAG_RETRY;


  ehc->i.dev = qc->dev;
  all_err_mask |= qc->err_mask;
  if (qc->flags & ATA_QCFLAG_IO)
   eflags |= ATA_EFLAG_IS_IO;
 }


 if (ap->pflags & ATA_PFLAG_FROZEN ||
     all_err_mask & (AC_ERR_HSM | AC_ERR_TIMEOUT))
  ehc->i.action |= ATA_EH_RESET;
 else if (((eflags & ATA_EFLAG_IS_IO) && all_err_mask) ||
   (!(eflags & ATA_EFLAG_IS_IO) && (all_err_mask & ~AC_ERR_DEV)))
  ehc->i.action |= ATA_EH_REVALIDATE;




 if (ehc->i.dev) {
  ehc->i.dev_action[ehc->i.dev->devno] |=
   ehc->i.action & ATA_EH_PERDEV_MASK;
  ehc->i.action &= ~ATA_EH_PERDEV_MASK;
 }


 if ((all_err_mask & AC_ERR_TIMEOUT) && !ata_is_host_link(link))
  ap->link.eh_context.i.err_mask |= AC_ERR_TIMEOUT;


 dev = ehc->i.dev;
 if (!dev && ((ata_link_max_devices(link) == 1 &&
        ata_dev_enabled(link->device))))
     dev = link->device;

 if (dev) {
  if (dev->flags & ATA_DFLAG_DUBIOUS_XFER)
   eflags |= ATA_EFLAG_DUBIOUS_XFER;
  ehc->i.action |= ata_eh_speed_down(dev, eflags, all_err_mask);
 }

 DPRINTK("EXIT\n");
}
