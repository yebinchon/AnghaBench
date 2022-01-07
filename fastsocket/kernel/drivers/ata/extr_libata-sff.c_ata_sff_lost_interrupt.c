
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int flags; } ;
struct ata_queued_cmd {TYPE_2__ tf; } ;
struct TYPE_3__ {int active_tag; } ;
struct ata_port {TYPE_1__ link; } ;


 int ATA_BUSY ;
 int ATA_TFLAG_POLLING ;
 int KERN_WARNING ;
 int ata_port_printk (struct ata_port*,int ,char*,int) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int ) ;
 int ata_sff_altstatus (struct ata_port*) ;
 int ata_sff_host_intr (struct ata_port*,struct ata_queued_cmd*) ;

void ata_sff_lost_interrupt(struct ata_port *ap)
{
 u8 status;
 struct ata_queued_cmd *qc;


 qc = ata_qc_from_tag(ap, ap->link.active_tag);

 if (!qc || qc->tf.flags & ATA_TFLAG_POLLING)
  return;


 status = ata_sff_altstatus(ap);
 if (status & ATA_BUSY)
  return;



 ata_port_printk(ap, KERN_WARNING, "lost interrupt (Status 0x%x)\n",
        status);


 ata_sff_host_intr(ap, qc);
}
