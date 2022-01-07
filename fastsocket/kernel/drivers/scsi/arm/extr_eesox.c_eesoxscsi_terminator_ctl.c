
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eesoxscsi_info {int ctl_port; int control; } ;
struct Scsi_Host {int host_lock; scalar_t__ hostdata; } ;


 int EESOX_TERM_ENABLE ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int writeb (int ,int ) ;

__attribute__((used)) static void
eesoxscsi_terminator_ctl(struct Scsi_Host *host, int on_off)
{
 struct eesoxscsi_info *info = (struct eesoxscsi_info *)host->hostdata;
 unsigned long flags;

 spin_lock_irqsave(host->host_lock, flags);
 if (on_off)
  info->control |= EESOX_TERM_ENABLE;
 else
  info->control &= ~EESOX_TERM_ENABLE;

 writeb(info->control, info->ctl_port);
 spin_unlock_irqrestore(host->host_lock, flags);
}
