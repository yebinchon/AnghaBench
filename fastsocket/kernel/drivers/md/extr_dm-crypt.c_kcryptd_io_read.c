
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_crypt_io {scalar_t__ sector; int error; struct bio* base_bio; TYPE_1__* target; } ;
struct crypt_config {scalar_t__ start; int bs; } ;
struct bio_vec {int dummy; } ;
struct bio {int bi_vcnt; int bi_io_vec; scalar_t__ bi_sector; int bi_size; scalar_t__ bi_idx; } ;
struct TYPE_2__ {struct crypt_config* private; } ;


 int ENOMEM ;
 int GFP_NOIO ;
 struct bio* bio_alloc_bioset (int ,int,int ) ;
 int bio_iovec (struct bio*) ;
 int bio_segments (struct bio*) ;
 int clone_init (struct dm_crypt_io*,struct bio*) ;
 int crypt_dec_pending (struct dm_crypt_io*) ;
 int crypt_inc_pending (struct dm_crypt_io*) ;
 int generic_make_request (struct bio*) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void kcryptd_io_read(struct dm_crypt_io *io)
{
 struct crypt_config *cc = io->target->private;
 struct bio *base_bio = io->base_bio;
 struct bio *clone;

 crypt_inc_pending(io);






 clone = bio_alloc_bioset(GFP_NOIO, bio_segments(base_bio), cc->bs);
 if (unlikely(!clone)) {
  io->error = -ENOMEM;
  crypt_dec_pending(io);
  return;
 }

 clone_init(io, clone);
 clone->bi_idx = 0;
 clone->bi_vcnt = bio_segments(base_bio);
 clone->bi_size = base_bio->bi_size;
 clone->bi_sector = cc->start + io->sector;
 memcpy(clone->bi_io_vec, bio_iovec(base_bio),
        sizeof(struct bio_vec) * clone->bi_vcnt);

 generic_make_request(clone);
}
