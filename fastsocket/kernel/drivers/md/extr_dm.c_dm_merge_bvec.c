
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct mapped_device* queuedata; } ;
struct mapped_device {int dummy; } ;
struct dm_target {TYPE_1__* type; } ;
struct dm_table {int dummy; } ;
struct bvec_merge_data {int bi_size; int bi_sector; } ;
struct bio_vec {int bv_len; } ;
typedef int sector_t ;
struct TYPE_2__ {int (* merge ) (struct dm_target*,struct bvec_merge_data*,struct bio_vec*,int) ;} ;


 scalar_t__ BIO_MAX_SECTORS ;
 scalar_t__ PAGE_SIZE ;
 int SECTOR_SHIFT ;
 struct dm_table* dm_get_live_table (struct mapped_device*) ;
 struct dm_target* dm_table_find_target (struct dm_table*,int ) ;
 int dm_table_put (struct dm_table*) ;
 int dm_target_is_valid (struct dm_target*) ;
 int max_io_len (int ,struct dm_target*) ;
 int min (int ,int) ;
 scalar_t__ queue_max_hw_sectors (struct request_queue*) ;
 int stub1 (struct dm_target*,struct bvec_merge_data*,struct bio_vec*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dm_merge_bvec(struct request_queue *q,
    struct bvec_merge_data *bvm,
    struct bio_vec *biovec)
{
 struct mapped_device *md = q->queuedata;
 struct dm_table *map = dm_get_live_table(md);
 struct dm_target *ti;
 sector_t max_sectors;
 int max_size = 0;

 if (unlikely(!map))
  goto out;

 ti = dm_table_find_target(map, bvm->bi_sector);
 if (!dm_target_is_valid(ti))
  goto out_table;




 max_sectors = min(max_io_len(bvm->bi_sector, ti),
     (sector_t) BIO_MAX_SECTORS);
 max_size = (max_sectors << SECTOR_SHIFT) - bvm->bi_size;
 if (max_size < 0)
  max_size = 0;






 if (max_size && ti->type->merge)
  max_size = ti->type->merge(ti, bvm, biovec, max_size);







 else if (queue_max_hw_sectors(q) <= PAGE_SIZE >> 9)

  max_size = 0;

out_table:
 dm_table_put(map);

out:



 if (max_size <= biovec->bv_len && !(bvm->bi_size >> SECTOR_SHIFT))
  max_size = biovec->bv_len;

 return max_size;
}
