
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int __sector; int rq_disk; } ;
struct hd_struct {int * in_flight; } ;
typedef int sector_t ;


 scalar_t__ blk_do_io_stat (struct request*) ;
 int is_same_part (int ,int ,int ,struct hd_struct**,struct hd_struct**) ;
 int part_round_stats (int,struct hd_struct*) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 size_t rq_data_dir (struct request*) ;

__attribute__((used)) static void blk_account_io_front_merge(struct request *req, sector_t newsector)
{
 if (blk_do_io_stat(req)) {
  struct hd_struct *oldpart, *newpart;
  int cpu;

  cpu = part_stat_lock();
  if (!is_same_part(req->rq_disk, req->__sector, newsector,
      &oldpart, &newpart)) {
   if (oldpart) {
    part_round_stats(cpu, oldpart);
    oldpart->in_flight[rq_data_dir(req)]--;
   }
   if (newpart) {
    part_round_stats(cpu, newpart);
    newpart->in_flight[rq_data_dir(req)]++;
   }
  }
  part_stat_unlock();
 }
}
