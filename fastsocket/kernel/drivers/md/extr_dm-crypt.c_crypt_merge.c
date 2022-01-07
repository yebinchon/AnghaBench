
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int (* merge_bvec_fn ) (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;} ;
struct dm_target {struct crypt_config* private; } ;
struct crypt_config {scalar_t__ start; TYPE_1__* dev; } ;
struct bvec_merge_data {scalar_t__ bi_sector; int bi_bdev; } ;
struct bio_vec {int dummy; } ;
struct TYPE_2__ {int bdev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 scalar_t__ dm_target_offset (struct dm_target*,scalar_t__) ;
 int min (int,int ) ;
 int stub1 (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;

__attribute__((used)) static int crypt_merge(struct dm_target *ti, struct bvec_merge_data *bvm,
         struct bio_vec *biovec, int max_size)
{
 struct crypt_config *cc = ti->private;
 struct request_queue *q = bdev_get_queue(cc->dev->bdev);

 if (!q->merge_bvec_fn)
  return max_size;

 bvm->bi_bdev = cc->dev->bdev;
 bvm->bi_sector = cc->start + dm_target_offset(ti, bvm->bi_sector);

 return min(max_size, q->merge_bvec_fn(q, bvm, biovec));
}
