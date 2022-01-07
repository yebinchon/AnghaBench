
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ protocol; } ;
struct ata_queued_cmd {int flags; int tag; int (* complete_fn ) (struct ata_queued_cmd*) ;TYPE_2__ tf; TYPE_1__* dev; struct ata_port* ap; } ;
struct ata_port {int qc_active; struct ata_link* excl_link; int nr_active_links; } ;
struct ata_link {int sactive; int active_tag; } ;
struct TYPE_3__ {struct ata_link* link; } ;


 scalar_t__ ATA_PROT_NCQ ;
 int ATA_QCFLAG_ACTIVE ;
 int ATA_QCFLAG_CLEAR_EXCL ;
 int ATA_QCFLAG_DMAMAP ;
 int ATA_TAG_POISON ;
 int WARN_ON_ONCE (int) ;
 int ata_sg_clean (struct ata_queued_cmd*) ;
 scalar_t__ likely (int) ;
 int stub1 (struct ata_queued_cmd*) ;
 scalar_t__ unlikely (int) ;

void __ata_qc_complete(struct ata_queued_cmd *qc)
{
 struct ata_port *ap;
 struct ata_link *link;

 WARN_ON_ONCE(qc == ((void*)0));
 WARN_ON_ONCE(!(qc->flags & ATA_QCFLAG_ACTIVE));
 ap = qc->ap;
 link = qc->dev->link;

 if (likely(qc->flags & ATA_QCFLAG_DMAMAP))
  ata_sg_clean(qc);


 if (qc->tf.protocol == ATA_PROT_NCQ) {
  link->sactive &= ~(1 << qc->tag);
  if (!link->sactive)
   ap->nr_active_links--;
 } else {
  link->active_tag = ATA_TAG_POISON;
  ap->nr_active_links--;
 }


 if (unlikely(qc->flags & ATA_QCFLAG_CLEAR_EXCL &&
       ap->excl_link == link))
  ap->excl_link = ((void*)0);





 qc->flags &= ~ATA_QCFLAG_ACTIVE;
 ap->qc_active &= ~(1 << qc->tag);


 qc->complete_fn(qc);
}
