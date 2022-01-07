
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int (* merge_bvec_fn ) (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;struct mddev* queuedata; } ;
struct r1conf {int raid_disks; TYPE_1__* mirrors; } ;
struct mddev {scalar_t__ merge_check_needed; struct r1conf* private; } ;
struct md_rdev {int bdev; scalar_t__ data_offset; int flags; } ;
struct bvec_merge_data {int bi_bdev; scalar_t__ bi_sector; } ;
struct bio_vec {int bv_len; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int rdev; } ;


 int Faulty ;
 struct request_queue* bdev_get_queue (int ) ;
 scalar_t__ get_start_sect (int ) ;
 int min (int,int ) ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int raid1_mergeable_bvec(struct request_queue *q,
    struct bvec_merge_data *bvm,
    struct bio_vec *biovec)
{
 struct mddev *mddev = q->queuedata;
 struct r1conf *conf = mddev->private;
 sector_t sector = bvm->bi_sector + get_start_sect(bvm->bi_bdev);
 int max = biovec->bv_len;

 if (mddev->merge_check_needed) {
  int disk;
  rcu_read_lock();
  for (disk = 0; disk < conf->raid_disks * 2; disk++) {
   struct md_rdev *rdev = rcu_dereference(
    conf->mirrors[disk].rdev);
   if (rdev && !test_bit(Faulty, &rdev->flags)) {
    struct request_queue *q =
     bdev_get_queue(rdev->bdev);
    if (q->merge_bvec_fn) {
     bvm->bi_sector = sector +
      rdev->data_offset;
     bvm->bi_bdev = rdev->bdev;
     max = min(max, q->merge_bvec_fn(
         q, bvm, biovec));
    }
   }
  }
  rcu_read_unlock();
 }
 return max;

}
