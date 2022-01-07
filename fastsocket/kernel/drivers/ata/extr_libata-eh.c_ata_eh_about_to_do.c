
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int lock; int pflags; struct ata_link* slave_link; } ;
struct TYPE_2__ {int flags; } ;
struct ata_eh_context {TYPE_1__ i; } ;
struct ata_eh_info {int dummy; } ;
struct ata_link {struct ata_eh_context eh_context; struct ata_eh_info eh_info; struct ata_port* ap; } ;
struct ata_device {int dummy; } ;


 int ATA_EHI_QUIET ;
 int ATA_PFLAG_RECOVERED ;
 int ata_eh_clear_action (struct ata_link*,struct ata_device*,struct ata_eh_info*,unsigned int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void ata_eh_about_to_do(struct ata_link *link, struct ata_device *dev,
   unsigned int action)
{
 struct ata_port *ap = link->ap;
 struct ata_eh_info *ehi = &link->eh_info;
 struct ata_eh_context *ehc = &link->eh_context;
 unsigned long flags;

 spin_lock_irqsave(ap->lock, flags);

 ata_eh_clear_action(link, dev, ehi, action);




 if (!(ehc->i.flags & ATA_EHI_QUIET) && link != ap->slave_link)
  ap->pflags |= ATA_PFLAG_RECOVERED;

 spin_unlock_irqrestore(ap->lock, flags);
}
