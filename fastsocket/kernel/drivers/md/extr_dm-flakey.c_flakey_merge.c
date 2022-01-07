
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int (* merge_bvec_fn ) (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;} ;
struct flakey_c {TYPE_1__* dev; } ;
struct dm_target {struct flakey_c* private; } ;
struct bvec_merge_data {int bi_sector; int bi_bdev; } ;
struct bio_vec {int dummy; } ;
struct TYPE_2__ {int bdev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 int flakey_map_sector (struct dm_target*,int ) ;
 int min (int,int ) ;
 int stub1 (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;

__attribute__((used)) static int flakey_merge(struct dm_target *ti, struct bvec_merge_data *bvm,
   struct bio_vec *biovec, int max_size)
{
 struct flakey_c *fc = ti->private;
 struct request_queue *q = bdev_get_queue(fc->dev->bdev);

 if (!q->merge_bvec_fn)
  return max_size;

 bvm->bi_bdev = fc->dev->bdev;
 bvm->bi_sector = flakey_map_sector(ti, bvm->bi_sector);

 return min(max_size, q->merge_bvec_fn(q, bvm, biovec));
}
