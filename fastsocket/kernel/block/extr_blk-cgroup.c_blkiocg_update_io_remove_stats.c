
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * stat_arr; } ;
struct blkio_group {int stats_lock; TYPE_1__ stats; } ;


 size_t BLKIO_STAT_QUEUED ;
 int blkio_check_and_dec_stat (int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void blkiocg_update_io_remove_stats(struct blkio_group *blkg,
      bool direction, bool sync)
{
 unsigned long flags;

 spin_lock_irqsave(&blkg->stats_lock, flags);
 blkio_check_and_dec_stat(blkg->stats.stat_arr[BLKIO_STAT_QUEUED],
     direction, sync);
 spin_unlock_irqrestore(&blkg->stats_lock, flags);
}
