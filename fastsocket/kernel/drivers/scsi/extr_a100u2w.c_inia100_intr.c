
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orc_host {int dummy; } ;
struct Scsi_Host {int host_lock; scalar_t__ hostdata; } ;
typedef int irqreturn_t ;


 int orc_interrupt (struct orc_host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static irqreturn_t inia100_intr(int irqno, void *devid)
{
 struct Scsi_Host *shost = (struct Scsi_Host *)devid;
 struct orc_host *host = (struct orc_host *)shost->hostdata;
 unsigned long flags;
 irqreturn_t res;

 spin_lock_irqsave(shost->host_lock, flags);
 res = orc_interrupt(host);
 spin_unlock_irqrestore(shost->host_lock, flags);

 return res;
}
