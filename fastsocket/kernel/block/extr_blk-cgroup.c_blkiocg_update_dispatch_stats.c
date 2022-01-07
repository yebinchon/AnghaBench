
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct blkio_group_stats_cpu {int sectors; int syncp; int * stat_arr_cpu; } ;
struct blkio_group {int stats_cpu; } ;


 size_t BLKIO_STAT_CPU_SERVICED ;
 size_t BLKIO_STAT_CPU_SERVICE_BYTES ;
 int blkio_add_stat (int ,int,int,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct blkio_group_stats_cpu* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

void blkiocg_update_dispatch_stats(struct blkio_group *blkg,
    uint64_t bytes, bool direction, bool sync)
{
 struct blkio_group_stats_cpu *stats_cpu;
 unsigned long flags;






 local_irq_save(flags);

 stats_cpu = this_cpu_ptr(blkg->stats_cpu);

 u64_stats_update_begin(&stats_cpu->syncp);
 stats_cpu->sectors += bytes >> 9;
 blkio_add_stat(stats_cpu->stat_arr_cpu[BLKIO_STAT_CPU_SERVICED],
   1, direction, sync);
 blkio_add_stat(stats_cpu->stat_arr_cpu[BLKIO_STAT_CPU_SERVICE_BYTES],
   bytes, direction, sync);
 u64_stats_update_end(&stats_cpu->syncp);
 local_irq_restore(flags);
}
