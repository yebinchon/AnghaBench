
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target_io {int dummy; } ;
struct dm_target {int dummy; } ;
struct clone_info {scalar_t__ sector; scalar_t__ sector_count; size_t idx; TYPE_1__* md; int map; struct bio* bio; } ;
struct bio_vec {scalar_t__ bv_offset; int bv_len; } ;
struct bio {int bi_rw; int bi_vcnt; struct bio_vec* bi_io_vec; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int bs; } ;


 int BIO_DISCARD ;
 int EIO ;
 int __clone_and_map_discard (struct clone_info*) ;
 int __clone_and_map_simple (struct clone_info*,struct dm_target*) ;
 int __map_bio (struct dm_target*,struct bio*,struct dm_target_io*) ;
 struct dm_target_io* alloc_tio (struct clone_info*,struct dm_target*) ;
 struct bio* clone_bio (struct bio*,scalar_t__,int,int,scalar_t__,int ) ;
 struct dm_target* dm_table_find_target (int ,scalar_t__) ;
 int dm_target_is_valid (struct dm_target*) ;
 scalar_t__ max_io_len (scalar_t__,struct dm_target*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 struct bio* split_bvec (struct bio*,scalar_t__,int,scalar_t__,scalar_t__,int ) ;
 scalar_t__ to_bytes (scalar_t__) ;
 scalar_t__ to_sector (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __clone_and_map(struct clone_info *ci)
{
 struct bio *clone, *bio = ci->bio;
 struct dm_target *ti;
 sector_t len = 0, max;
 struct dm_target_io *tio;

 if (unlikely(bio->bi_rw & BIO_DISCARD))
  return __clone_and_map_discard(ci);

 ti = dm_table_find_target(ci->map, ci->sector);
 if (!dm_target_is_valid(ti))
  return -EIO;

 max = max_io_len(ci->sector, ti);

 if (ci->sector_count <= max) {




  __clone_and_map_simple(ci, ti);

 } else if (to_sector(bio->bi_io_vec[ci->idx].bv_len) <= max) {




  int i;
  sector_t remaining = max;
  sector_t bv_len;

  for (i = ci->idx; remaining && (i < bio->bi_vcnt); i++) {
   bv_len = to_sector(bio->bi_io_vec[i].bv_len);

   if (bv_len > remaining)
    break;

   remaining -= bv_len;
   len += bv_len;
  }

  tio = alloc_tio(ci, ti);
  clone = clone_bio(bio, ci->sector, ci->idx, i - ci->idx, len,
      ci->md->bs);
  __map_bio(ti, clone, tio);

  ci->sector += len;
  ci->sector_count -= len;
  ci->idx = i;

 } else {



  struct bio_vec *bv = bio->bi_io_vec + ci->idx;
  sector_t remaining = to_sector(bv->bv_len);
  unsigned int offset = 0;

  do {
   if (offset) {
    ti = dm_table_find_target(ci->map, ci->sector);
    if (!dm_target_is_valid(ti))
     return -EIO;

    max = max_io_len(ci->sector, ti);
   }

   len = min(remaining, max);

   tio = alloc_tio(ci, ti);
   clone = split_bvec(bio, ci->sector, ci->idx,
        bv->bv_offset + offset, len,
        ci->md->bs);

   __map_bio(ti, clone, tio);

   ci->sector += len;
   ci->sector_count -= len;
   offset += to_bytes(len);
  } while (remaining -= len);

  ci->idx++;
 }

 return 0;
}
