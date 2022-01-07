
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ protocol; } ;
struct ata_queued_cmd {int flags; TYPE_1__ tf; } ;


 scalar_t__ ATA_PROT_NCQ ;
 int ATA_QCFLAG_DMAMAP ;
 int ata_sff_qc_prep (struct ata_queued_cmd*) ;
 int nv_swncq_fill_sg (struct ata_queued_cmd*) ;

__attribute__((used)) static void nv_swncq_qc_prep(struct ata_queued_cmd *qc)
{
 if (qc->tf.protocol != ATA_PROT_NCQ) {
  ata_sff_qc_prep(qc);
  return;
 }

 if (!(qc->flags & ATA_QCFLAG_DMAMAP))
  return;

 nv_swncq_fill_sg(qc);
}
