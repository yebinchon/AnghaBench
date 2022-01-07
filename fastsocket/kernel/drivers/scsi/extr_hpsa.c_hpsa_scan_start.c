
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {int scan_finished; int scan_lock; int scan_wait_queue; TYPE_1__* scsi_host; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int host_no; } ;


 int hpsa_update_scsi_devices (struct ctlr_info*,int ) ;
 struct ctlr_info* shost_to_hba (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event (int ,int) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void hpsa_scan_start(struct Scsi_Host *sh)
{
 struct ctlr_info *h = shost_to_hba(sh);
 unsigned long flags;


 while (1) {
  spin_lock_irqsave(&h->scan_lock, flags);
  if (h->scan_finished)
   break;
  spin_unlock_irqrestore(&h->scan_lock, flags);
  wait_event(h->scan_wait_queue, h->scan_finished);





 }
 h->scan_finished = 0;
 spin_unlock_irqrestore(&h->scan_lock, flags);

 hpsa_update_scsi_devices(h, h->scsi_host->host_no);

 spin_lock_irqsave(&h->scan_lock, flags);
 h->scan_finished = 1;
 wake_up_all(&h->scan_wait_queue);
 spin_unlock_irqrestore(&h->scan_lock, flags);
}
