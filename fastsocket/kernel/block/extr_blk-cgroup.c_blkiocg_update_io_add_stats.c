
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * stat_arr; } ;
struct blkio_group {int stats_lock; TYPE_1__ stats; } ;


 size_t BLKIO_STAT_QUEUED ;
 int blkio_add_stat (int ,int,int,int) ;
 int blkio_end_empty_time (TYPE_1__*) ;
 int blkio_set_start_group_wait_time (struct blkio_group*,struct blkio_group*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void blkiocg_update_io_add_stats(struct blkio_group *blkg,
   struct blkio_group *curr_blkg, bool direction,
   bool sync)
{
 unsigned long flags;

 spin_lock_irqsave(&blkg->stats_lock, flags);
 blkio_add_stat(blkg->stats.stat_arr[BLKIO_STAT_QUEUED], 1, direction,
   sync);
 blkio_end_empty_time(&blkg->stats);
 blkio_set_start_group_wait_time(blkg, curr_blkg);
 spin_unlock_irqrestore(&blkg->stats_lock, flags);
}
