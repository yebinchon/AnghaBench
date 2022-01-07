
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_queued_cmd {int flags; TYPE_1__* dev; } ;
struct ata_port {TYPE_2__* ops; } ;
struct ata_link {int dummy; } ;
struct TYPE_4__ {int error_handler; } ;
struct TYPE_3__ {struct ata_link* link; } ;


 int ATA_MAX_QUEUE ;
 int ATA_QCFLAG_FAILED ;
 int WARN_ON (int) ;
 int ata_eh_set_pending (struct ata_port*,int ) ;
 int ata_port_schedule_eh (struct ata_port*) ;
 int ata_qc_complete (struct ata_queued_cmd*) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int) ;

__attribute__((used)) static int ata_do_link_abort(struct ata_port *ap, struct ata_link *link)
{
 int tag, nr_aborted = 0;

 WARN_ON(!ap->ops->error_handler);


 ata_eh_set_pending(ap, 0);

 for (tag = 0; tag < ATA_MAX_QUEUE; tag++) {
  struct ata_queued_cmd *qc = ata_qc_from_tag(ap, tag);

  if (qc && (!link || qc->dev->link == link)) {
   qc->flags |= ATA_QCFLAG_FAILED;
   ata_qc_complete(qc);
   nr_aborted++;
  }
 }

 if (!nr_aborted)
  ata_port_schedule_eh(ap);

 return nr_aborted;
}
