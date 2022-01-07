
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long time; } ;
struct blkio_group {int stats_lock; TYPE_1__ stats; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void blkiocg_update_timeslice_used(struct blkio_group *blkg, unsigned long time)
{
 unsigned long flags;

 spin_lock_irqsave(&blkg->stats_lock, flags);
 blkg->stats.time += time;
 spin_unlock_irqrestore(&blkg->stats_lock, flags);
}
