
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union map_info {int dummy; } map_info ;
struct dm_target {struct crypt_config* private; } ;
struct dm_crypt_io {int base_bio; } ;
struct crypt_config {TYPE_1__* dev; } ;
struct bio {int bi_rw; int bi_sector; int bi_bdev; } ;
struct TYPE_2__ {int bdev; } ;


 int BIO_FLUSH ;
 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 scalar_t__ READ ;
 scalar_t__ bio_data_dir (int ) ;
 struct dm_crypt_io* crypt_io_alloc (struct dm_target*,struct bio*,int ) ;
 int dm_target_offset (struct dm_target*,int ) ;
 int kcryptd_queue_crypt (struct dm_crypt_io*) ;
 int kcryptd_queue_io (struct dm_crypt_io*) ;

__attribute__((used)) static int crypt_map(struct dm_target *ti, struct bio *bio,
       union map_info *map_context)
{
 struct dm_crypt_io *io;
 struct crypt_config *cc;

 if (bio->bi_rw & BIO_FLUSH) {
  cc = ti->private;
  bio->bi_bdev = cc->dev->bdev;
  return DM_MAPIO_REMAPPED;
 }

 io = crypt_io_alloc(ti, bio, dm_target_offset(ti, bio->bi_sector));

 if (bio_data_dir(io->base_bio) == READ)
  kcryptd_queue_io(io);
 else
  kcryptd_queue_crypt(io);

 return DM_MAPIO_SUBMITTED;
}
