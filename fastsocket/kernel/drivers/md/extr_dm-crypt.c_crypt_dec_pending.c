
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_crypt_io {int error; int pending; struct dm_crypt_io* base_io; struct bio* base_bio; TYPE_1__* target; } ;
struct crypt_config {int io_pool; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct crypt_config* private; } ;


 int atomic_dec_and_test (int *) ;
 int bio_endio (struct bio*,int) ;
 scalar_t__ likely (int) ;
 int mempool_free (struct dm_crypt_io*,int ) ;

__attribute__((used)) static void crypt_dec_pending(struct dm_crypt_io *io)
{
 struct crypt_config *cc = io->target->private;
 struct bio *base_bio = io->base_bio;
 struct dm_crypt_io *base_io = io->base_io;
 int error = io->error;

 if (!atomic_dec_and_test(&io->pending))
  return;

 mempool_free(io, cc->io_pool);

 if (likely(!base_io))
  bio_endio(base_bio, error);
 else {
  if (error && !base_io->error)
   base_io->error = error;
  crypt_dec_pending(base_io);
 }
}
