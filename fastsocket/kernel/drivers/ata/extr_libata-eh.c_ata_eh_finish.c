
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int flags; int result_tf; scalar_t__ err_mask; } ;
struct ata_port {scalar_t__ nr_active_links; } ;


 int ATA_MAX_QUEUE ;
 int ATA_QCFLAG_FAILED ;
 int ATA_QCFLAG_RETRY ;
 int ATA_QCFLAG_SENSE_VALID ;
 int WARN_ON (scalar_t__) ;
 struct ata_queued_cmd* __ata_qc_from_tag (struct ata_port*,int) ;
 int ata_eh_qc_complete (struct ata_queued_cmd*) ;
 int ata_eh_qc_retry (struct ata_queued_cmd*) ;
 int memset (int *,int ,int) ;

void ata_eh_finish(struct ata_port *ap)
{
 int tag;


 for (tag = 0; tag < ATA_MAX_QUEUE; tag++) {
  struct ata_queued_cmd *qc = __ata_qc_from_tag(ap, tag);

  if (!(qc->flags & ATA_QCFLAG_FAILED))
   continue;

  if (qc->err_mask) {




   if (qc->flags & ATA_QCFLAG_RETRY)
    ata_eh_qc_retry(qc);
   else
    ata_eh_qc_complete(qc);
  } else {
   if (qc->flags & ATA_QCFLAG_SENSE_VALID) {
    ata_eh_qc_complete(qc);
   } else {

    memset(&qc->result_tf, 0, sizeof(qc->result_tf));
    ata_eh_qc_retry(qc);
   }
  }
 }


 WARN_ON(ap->nr_active_links);
 ap->nr_active_links = 0;
}
