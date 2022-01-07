
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_vec {unsigned int bv_offset; int bv_len; } ;
struct bio_set {int dummy; } ;
struct bio {int bi_vcnt; int bi_flags; int bi_size; struct bio_vec* bi_io_vec; int bi_rw; int bi_bdev; int bi_sector; int bi_destructor; } ;
typedef int sector_t ;


 int BIO_CLONED ;
 int GFP_NOIO ;
 struct bio* bio_alloc_bioset (int ,int,struct bio_set*) ;
 scalar_t__ bio_integrity (struct bio*) ;
 int bio_integrity_clone (struct bio*,struct bio*,int ,struct bio_set*) ;
 int bio_integrity_trim (struct bio*,int ,unsigned int) ;
 int bio_sector_offset (struct bio*,unsigned short,unsigned int) ;
 int dm_bio_destructor ;
 int to_bytes (unsigned int) ;

__attribute__((used)) static struct bio *split_bvec(struct bio *bio, sector_t sector,
         unsigned short idx, unsigned int offset,
         unsigned int len, struct bio_set *bs)
{
 struct bio *clone;
 struct bio_vec *bv = bio->bi_io_vec + idx;

 clone = bio_alloc_bioset(GFP_NOIO, 1, bs);
 clone->bi_destructor = dm_bio_destructor;
 *clone->bi_io_vec = *bv;

 clone->bi_sector = sector;
 clone->bi_bdev = bio->bi_bdev;
 clone->bi_rw = bio->bi_rw;
 clone->bi_vcnt = 1;
 clone->bi_size = to_bytes(len);
 clone->bi_io_vec->bv_offset = offset;
 clone->bi_io_vec->bv_len = clone->bi_size;
 clone->bi_flags |= 1 << BIO_CLONED;

 if (bio_integrity(bio)) {
  bio_integrity_clone(clone, bio, GFP_NOIO, bs);
  bio_integrity_trim(clone,
       bio_sector_offset(bio, idx, offset), len);
 }

 return clone;
}
