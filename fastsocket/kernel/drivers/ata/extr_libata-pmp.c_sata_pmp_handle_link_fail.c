
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_port {int lock; } ;
struct TYPE_3__ {scalar_t__ action; } ;
struct TYPE_4__ {TYPE_1__ i; } ;
struct ata_link {size_t pmp; int flags; TYPE_2__ eh_context; int device; struct ata_port* ap; } ;


 int ATA_EH_PMP_LINK_TRIES ;
 int ATA_LFLAG_DISABLED ;
 int KERN_WARNING ;
 int ata_dev_disable (int ) ;
 int ata_link_printk (struct ata_link*,int ,char*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int sata_pmp_handle_link_fail(struct ata_link *link, int *link_tries)
{
 struct ata_port *ap = link->ap;
 unsigned long flags;

 if (link_tries[link->pmp] && --link_tries[link->pmp])
  return 1;


 if (!(link->flags & ATA_LFLAG_DISABLED)) {
  ata_link_printk(link, KERN_WARNING,
   "failed to recover link after %d tries, disabling\n",
   ATA_EH_PMP_LINK_TRIES);

  spin_lock_irqsave(ap->lock, flags);
  link->flags |= ATA_LFLAG_DISABLED;
  spin_unlock_irqrestore(ap->lock, flags);
 }

 ata_dev_disable(link->device);
 link->eh_context.i.action = 0;

 return 0;
}
