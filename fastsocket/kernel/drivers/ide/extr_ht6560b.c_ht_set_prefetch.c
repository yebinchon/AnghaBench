
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {int name; int dev_flags; } ;
typedef TYPE_1__ ide_drive_t ;


 int HT_PREFETCH_MODE ;
 int IDE_DFLAG_NO_UNMASK ;
 int IDE_DFLAG_UNMASK ;
 int ht6560b_lock ;
 scalar_t__ ide_get_drivedata (TYPE_1__*) ;
 int ide_set_drivedata (TYPE_1__*,void*) ;
 int printk (char*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ht_set_prefetch(ide_drive_t *drive, u8 state)
{
 unsigned long flags, config;
 int t = HT_PREFETCH_MODE << 8;

 spin_lock_irqsave(&ht6560b_lock, flags);

 config = (unsigned long)ide_get_drivedata(drive);




 if (state) {
  config |= t;
  drive->dev_flags |= IDE_DFLAG_NO_UNMASK;
  drive->dev_flags &= ~IDE_DFLAG_UNMASK;
 } else {
  config &= ~t;
  drive->dev_flags &= ~IDE_DFLAG_NO_UNMASK;
 }

 ide_set_drivedata(drive, (void *)config);

 spin_unlock_irqrestore(&ht6560b_lock, flags);




}
