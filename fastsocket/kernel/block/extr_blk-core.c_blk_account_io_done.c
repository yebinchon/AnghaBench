
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int cmd_flags; unsigned long start_time; int rq_disk; } ;
struct hd_struct {int dummy; } ;


 int REQ_FLUSH_SEQ ;
 scalar_t__ blk_do_io_stat (struct request*) ;
 int blk_rq_pos (struct request*) ;
 struct hd_struct* disk_map_sector_rcu (int ,int ) ;
 int * ios ;
 unsigned long jiffies ;
 int part_dec_in_flight (struct hd_struct*,int const) ;
 int part_round_stats (int,struct hd_struct*) ;
 int part_stat_add (int,struct hd_struct*,int ,unsigned long) ;
 int part_stat_inc (int,struct hd_struct*,int ) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int rq_data_dir (struct request*) ;
 int * ticks ;

__attribute__((used)) static void blk_account_io_done(struct request *req)
{





 if (blk_do_io_stat(req) && !(req->cmd_flags & REQ_FLUSH_SEQ)) {
  unsigned long duration = jiffies - req->start_time;
  const int rw = rq_data_dir(req);
  struct hd_struct *part;
  int cpu;

  cpu = part_stat_lock();
  part = disk_map_sector_rcu(req->rq_disk, blk_rq_pos(req));

  part_stat_inc(cpu, part, ios[rw]);
  part_stat_add(cpu, part, ticks[rw], duration);
  part_round_stats(cpu, part);
  part_dec_in_flight(part, rw);

  part_stat_unlock();
 }
}
