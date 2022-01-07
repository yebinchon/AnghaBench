
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
typedef TYPE_1__ ide_hwif_t ;
typedef int ide_handler_t ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int __ide_set_handler (TYPE_2__*,int *,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ide_set_handler(ide_drive_t *drive, ide_handler_t *handler,
       unsigned int timeout)
{
 ide_hwif_t *hwif = drive->hwif;
 unsigned long flags;

 spin_lock_irqsave(&hwif->lock, flags);
 __ide_set_handler(drive, handler, timeout);
 spin_unlock_irqrestore(&hwif->lock, flags);
}
