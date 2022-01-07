
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct stripe_c {TYPE_2__* stripe; } ;
struct request_queue {int (* merge_bvec_fn ) (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;} ;
struct dm_target {struct stripe_c* private; } ;
struct bvec_merge_data {scalar_t__ bi_sector; int bi_bdev; } ;
struct bio_vec {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_4__ {scalar_t__ physical_start; TYPE_1__* dev; } ;
struct TYPE_3__ {int bdev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 int min (int,int ) ;
 int stripe_map_sector (struct stripe_c*,scalar_t__,size_t*,scalar_t__*) ;
 int stub1 (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;

__attribute__((used)) static int stripe_merge(struct dm_target *ti, struct bvec_merge_data *bvm,
   struct bio_vec *biovec, int max_size)
{
 struct stripe_c *sc = ti->private;
 sector_t bvm_sector = bvm->bi_sector;
 uint32_t stripe;
 struct request_queue *q;

 stripe_map_sector(sc, bvm_sector, &stripe, &bvm_sector);

 q = bdev_get_queue(sc->stripe[stripe].dev->bdev);
 if (!q->merge_bvec_fn)
  return max_size;

 bvm->bi_bdev = sc->stripe[stripe].dev->bdev;
 bvm->bi_sector = sc->stripe[stripe].physical_start + bvm_sector;

 return min(max_size, q->merge_bvec_fn(q, bvm, biovec));
}
