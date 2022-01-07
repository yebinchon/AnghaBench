
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int scan_finished; int scan_lock; } ;
struct Scsi_Host {int dummy; } ;


 struct ctlr_info* shost_to_hba (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hpsa_scan_finished(struct Scsi_Host *sh,
 unsigned long elapsed_time)
{
 struct ctlr_info *h = shost_to_hba(sh);
 unsigned long flags;
 int finished;

 spin_lock_irqsave(&h->scan_lock, flags);
 finished = h->scan_finished;
 spin_unlock_irqrestore(&h->scan_lock, flags);
 return finished;
}
