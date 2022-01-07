
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rq_disk; } ;
struct hd_struct {int dummy; } ;


 int blk_do_io_stat (struct request*) ;
 int blk_rq_pos (struct request*) ;
 struct hd_struct* disk_map_sector_rcu (int ,int ) ;
 int * merges ;
 int part_inc_in_flight (struct hd_struct*,int) ;
 int part_round_stats (int,struct hd_struct*) ;
 int part_stat_inc (int,struct hd_struct*,int ) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int rq_data_dir (struct request*) ;

__attribute__((used)) static void drive_stat_acct(struct request *rq, int new_io)
{
 struct hd_struct *part;
 int rw = rq_data_dir(rq);
 int cpu;

 if (!blk_do_io_stat(rq))
  return;

 cpu = part_stat_lock();
 part = disk_map_sector_rcu(rq->rq_disk, blk_rq_pos(rq));

 if (!new_io)
  part_stat_inc(cpu, part, merges[rw]);
 else {
  part_round_stats(cpu, part);
  part_inc_in_flight(part, rw);
 }

 part_stat_unlock();
}
