
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_set {int dummy; } ;
struct bio {unsigned short bi_idx; unsigned short bi_vcnt; scalar_t__ bi_size; int bi_flags; int bi_sector; int bi_destructor; int bi_max_vecs; } ;
typedef int sector_t ;


 int BIO_SEG_VALID ;
 int GFP_NOIO ;
 int __bio_clone (struct bio*,struct bio*) ;
 struct bio* bio_alloc_bioset (int ,int ,struct bio_set*) ;
 scalar_t__ bio_integrity (struct bio*) ;
 int bio_integrity_clone (struct bio*,struct bio*,int ,struct bio_set*) ;
 int bio_integrity_trim (struct bio*,int ,unsigned int) ;
 int bio_sector_offset (struct bio*,unsigned short,int ) ;
 int dm_bio_destructor ;
 scalar_t__ to_bytes (unsigned int) ;

__attribute__((used)) static struct bio *clone_bio(struct bio *bio, sector_t sector,
        unsigned short idx, unsigned short bv_count,
        unsigned int len, struct bio_set *bs)
{
 struct bio *clone;

 clone = bio_alloc_bioset(GFP_NOIO, bio->bi_max_vecs, bs);
 __bio_clone(clone, bio);
 clone->bi_destructor = dm_bio_destructor;
 clone->bi_sector = sector;
 clone->bi_idx = idx;
 clone->bi_vcnt = idx + bv_count;
 clone->bi_size = to_bytes(len);
 clone->bi_flags &= ~(1 << BIO_SEG_VALID);

 if (bio_integrity(bio)) {
  bio_integrity_clone(clone, bio, GFP_NOIO, bs);

  if (idx != bio->bi_idx || clone->bi_size < bio->bi_size)
   bio_integrity_trim(clone,
        bio_sector_offset(bio, idx, 0), len);
 }

 return clone;
}
