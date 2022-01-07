
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int pflags; int scsi_host; TYPE_1__* ops; } ;
struct TYPE_2__ {int error_handler; } ;


 int ATA_PFLAG_INITIALIZING ;
 int DPRINTK (char*) ;
 int WARN_ON (int) ;
 int ata_eh_set_pending (struct ata_port*,int) ;
 int scsi_schedule_eh (int ) ;

void ata_std_sched_eh(struct ata_port *ap)
{
 WARN_ON(!ap->ops->error_handler);

 if (ap->pflags & ATA_PFLAG_INITIALIZING)
  return;

 ata_eh_set_pending(ap, 1);
 scsi_schedule_eh(ap->scsi_host);

 DPRINTK("port EH scheduled\n");
}
