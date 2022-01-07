
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ idx_out; struct bio* bio_out; } ;
struct dm_crypt_io {scalar_t__ sector; TYPE_1__ ctx; int error; TYPE_2__* target; } ;
struct crypt_config {scalar_t__ start; } ;
struct bio {scalar_t__ bi_vcnt; scalar_t__ bi_sector; } ;
struct TYPE_4__ {struct crypt_config* private; } ;


 int BUG_ON (int) ;
 int EIO ;
 int bio_put (struct bio*) ;
 int crypt_dec_pending (struct dm_crypt_io*) ;
 int crypt_free_buffer_pages (struct crypt_config*,struct bio*) ;
 int generic_make_request (struct bio*) ;
 int kcryptd_queue_io (struct dm_crypt_io*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void kcryptd_crypt_write_io_submit(struct dm_crypt_io *io,
       int error, int async)
{
 struct bio *clone = io->ctx.bio_out;
 struct crypt_config *cc = io->target->private;

 if (unlikely(error < 0)) {
  crypt_free_buffer_pages(cc, clone);
  bio_put(clone);
  io->error = -EIO;
  crypt_dec_pending(io);
  return;
 }


 BUG_ON(io->ctx.idx_out < clone->bi_vcnt);

 clone->bi_sector = cc->start + io->sector;

 if (async)
  kcryptd_queue_io(io);
 else
  generic_make_request(clone);
}
