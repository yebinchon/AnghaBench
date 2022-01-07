
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct crypt_config* private; } ;
struct dm_crypt_io {int pending; int * base_io; scalar_t__ error; int sector; struct bio* base_bio; struct dm_target* target; } ;
struct crypt_config {int io_pool; } ;
struct bio {int dummy; } ;
typedef int sector_t ;


 int GFP_NOIO ;
 int atomic_set (int *,int ) ;
 struct dm_crypt_io* mempool_alloc (int ,int ) ;

__attribute__((used)) static struct dm_crypt_io *crypt_io_alloc(struct dm_target *ti,
       struct bio *bio, sector_t sector)
{
 struct crypt_config *cc = ti->private;
 struct dm_crypt_io *io;

 io = mempool_alloc(cc->io_pool, GFP_NOIO);
 io->target = ti;
 io->base_bio = bio;
 io->sector = sector;
 io->error = 0;
 io->base_io = ((void*)0);
 atomic_set(&io->pending, 0);

 return io;
}
