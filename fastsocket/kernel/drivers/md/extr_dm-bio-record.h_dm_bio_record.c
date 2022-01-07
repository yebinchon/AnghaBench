
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_bio_details {TYPE_1__* bi_io_vec; int bi_flags; int bi_idx; int bi_size; int bi_bdev; int bi_sector; } ;
struct bio {unsigned int bi_vcnt; TYPE_2__* bi_io_vec; int bi_flags; int bi_idx; int bi_size; int bi_bdev; int bi_sector; } ;
struct TYPE_4__ {int bv_offset; int bv_len; } ;
struct TYPE_3__ {int bv_offset; int bv_len; } ;



__attribute__((used)) static inline void dm_bio_record(struct dm_bio_details *bd, struct bio *bio)
{
 unsigned i;

 bd->bi_sector = bio->bi_sector;
 bd->bi_bdev = bio->bi_bdev;
 bd->bi_size = bio->bi_size;
 bd->bi_idx = bio->bi_idx;
 bd->bi_flags = bio->bi_flags;

 for (i = 0; i < bio->bi_vcnt; i++) {
  bd->bi_io_vec[i].bv_len = bio->bi_io_vec[i].bv_len;
  bd->bi_io_vec[i].bv_offset = bio->bi_io_vec[i].bv_offset;
 }
}
