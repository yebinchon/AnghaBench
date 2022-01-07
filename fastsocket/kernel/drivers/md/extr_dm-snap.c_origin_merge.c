
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int (* merge_bvec_fn ) (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;} ;
struct dm_target {struct dm_dev* private; } ;
struct dm_dev {int bdev; } ;
struct bvec_merge_data {int bi_bdev; } ;
struct bio_vec {int dummy; } ;


 struct request_queue* bdev_get_queue (int ) ;
 int min (int,int ) ;
 int stub1 (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;

__attribute__((used)) static int origin_merge(struct dm_target *ti, struct bvec_merge_data *bvm,
   struct bio_vec *biovec, int max_size)
{
 struct dm_dev *dev = ti->private;
 struct request_queue *q = bdev_get_queue(dev->bdev);

 if (!q->merge_bvec_fn)
  return max_size;

 bvm->bi_bdev = dev->bdev;

 return min(max_size, q->merge_bvec_fn(q, bvm, biovec));
}
