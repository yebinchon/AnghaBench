
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {unsigned int tag; } ;
struct ata_port {int pflags; int qc_allocated; } ;


 int ATA_MAX_QUEUE ;
 int ATA_PFLAG_FROZEN ;
 struct ata_queued_cmd* __ata_qc_from_tag (struct ata_port*,unsigned int) ;
 int test_and_set_bit (unsigned int,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ata_queued_cmd *ata_qc_new(struct ata_port *ap)
{
 struct ata_queued_cmd *qc = ((void*)0);
 unsigned int i;


 if (unlikely(ap->pflags & ATA_PFLAG_FROZEN))
  return ((void*)0);


 for (i = 0; i < ATA_MAX_QUEUE - 1; i++)
  if (!test_and_set_bit(i, &ap->qc_allocated)) {
   qc = __ata_qc_from_tag(ap, i);
   break;
  }

 if (qc)
  qc->tag = i;

 return qc;
}
