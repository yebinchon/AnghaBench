
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;
struct Scsi_Host {scalar_t__ host_failed; int host_lock; int eh_cmd_q; } ;


 int DPRINTK (char*) ;
 int LIST_HEAD (int ) ;
 int WARN_ON (int) ;
 int ata_scsi_cmd_error_handler (struct Scsi_Host*,struct ata_port*,int *) ;
 int ata_scsi_port_error_handler (struct Scsi_Host*,struct ata_port*) ;
 struct ata_port* ata_shost_to_port (struct Scsi_Host*) ;
 int eh_work_q ;
 int list_empty (int *) ;
 int list_splice_init (int *,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void ata_scsi_error(struct Scsi_Host *host)
{
 struct ata_port *ap = ata_shost_to_port(host);
 unsigned long flags;
 LIST_HEAD(eh_work_q);

 DPRINTK("ENTER\n");

 spin_lock_irqsave(host->host_lock, flags);
 list_splice_init(&host->eh_cmd_q, &eh_work_q);
 spin_unlock_irqrestore(host->host_lock, flags);

 ata_scsi_cmd_error_handler(host, ap, &eh_work_q);



 ata_scsi_port_error_handler(host, ap);


 WARN_ON(host->host_failed || !list_empty(&eh_work_q));

 DPRINTK("EXIT\n");
}
