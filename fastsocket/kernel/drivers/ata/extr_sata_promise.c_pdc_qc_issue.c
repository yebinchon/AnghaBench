
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int protocol; int flags; } ;
struct ata_queued_cmd {TYPE_2__ tf; TYPE_1__* dev; } ;
struct TYPE_3__ {int flags; } ;




 int ATA_DFLAG_CDB_INTR ;


 int ATA_TFLAG_POLLING ;
 unsigned int ata_sff_qc_issue (struct ata_queued_cmd*) ;
 int pdc_packet_start (struct ata_queued_cmd*) ;

__attribute__((used)) static unsigned int pdc_qc_issue(struct ata_queued_cmd *qc)
{
 switch (qc->tf.protocol) {
 case 130:
  if (qc->dev->flags & ATA_DFLAG_CDB_INTR)
   break;

 case 128:
  if (qc->tf.flags & ATA_TFLAG_POLLING)
   break;

 case 131:
 case 129:
  pdc_packet_start(qc);
  return 0;
 default:
  break;
 }
 return ata_sff_qc_issue(qc);
}
