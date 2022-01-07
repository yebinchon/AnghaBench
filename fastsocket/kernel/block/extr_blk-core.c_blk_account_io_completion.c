
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rq_disk; } ;
struct hd_struct {int dummy; } ;


 scalar_t__ blk_do_io_stat (struct request*) ;
 int blk_rq_pos (struct request*) ;
 struct hd_struct* disk_map_sector_rcu (int ,int ) ;
 int part_stat_add (int,struct hd_struct*,int ,unsigned int) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int rq_data_dir (struct request*) ;
 int * sectors ;

__attribute__((used)) static void blk_account_io_completion(struct request *req, unsigned int bytes)
{
 if (blk_do_io_stat(req)) {
  const int rw = rq_data_dir(req);
  struct hd_struct *part;
  int cpu;

  cpu = part_stat_lock();
  part = disk_map_sector_rcu(req->rq_disk, blk_rq_pos(req));
  part_stat_add(cpu, part, sectors[rw], bytes >> 9);
  part_stat_unlock();
 }
}
