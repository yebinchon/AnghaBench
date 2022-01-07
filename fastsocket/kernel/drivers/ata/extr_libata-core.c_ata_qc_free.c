
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {unsigned int tag; scalar_t__ flags; struct ata_port* ap; } ;
struct ata_port {int qc_allocated; } ;


 unsigned int ATA_TAG_POISON ;
 int WARN_ON_ONCE (int ) ;
 int ata_tag_valid (unsigned int) ;
 int clear_bit (unsigned int,int *) ;
 scalar_t__ likely (int ) ;

void ata_qc_free(struct ata_queued_cmd *qc)
{
 struct ata_port *ap;
 unsigned int tag;

 WARN_ON_ONCE(qc == ((void*)0));
 ap = qc->ap;

 qc->flags = 0;
 tag = qc->tag;
 if (likely(ata_tag_valid(tag))) {
  qc->tag = ATA_TAG_POISON;
  clear_bit(tag, &ap->qc_allocated);
 }
}
