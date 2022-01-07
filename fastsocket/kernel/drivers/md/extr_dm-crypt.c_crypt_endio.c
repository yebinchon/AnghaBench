
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_crypt_io {int error; TYPE_1__* target; } ;
struct crypt_config {int dummy; } ;
struct bio {struct dm_crypt_io* bi_private; } ;
struct TYPE_2__ {struct crypt_config* private; } ;


 int BIO_UPTODATE ;
 int EIO ;
 unsigned int READ ;
 unsigned int WRITE ;
 unsigned int bio_data_dir (struct bio*) ;
 int bio_flagged (struct bio*,int ) ;
 int bio_put (struct bio*) ;
 int crypt_dec_pending (struct dm_crypt_io*) ;
 int crypt_free_buffer_pages (struct crypt_config*,struct bio*) ;
 int kcryptd_queue_crypt (struct dm_crypt_io*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void crypt_endio(struct bio *clone, int error)
{
 struct dm_crypt_io *io = clone->bi_private;
 struct crypt_config *cc = io->target->private;
 unsigned rw = bio_data_dir(clone);

 if (unlikely(!bio_flagged(clone, BIO_UPTODATE) && !error))
  error = -EIO;




 if (rw == WRITE)
  crypt_free_buffer_pages(cc, clone);

 bio_put(clone);

 if (rw == READ && !error) {
  kcryptd_queue_crypt(io);
  return;
 }

 if (unlikely(error))
  io->error = error;

 crypt_dec_pending(io);
}
