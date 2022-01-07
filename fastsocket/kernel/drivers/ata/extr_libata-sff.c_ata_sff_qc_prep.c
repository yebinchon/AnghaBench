
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int flags; } ;


 int ATA_QCFLAG_DMAMAP ;
 int ata_fill_sg (struct ata_queued_cmd*) ;

void ata_sff_qc_prep(struct ata_queued_cmd *qc)
{
 if (!(qc->flags & ATA_QCFLAG_DMAMAP))
  return;

 ata_fill_sg(qc);
}
