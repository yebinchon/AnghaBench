
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mapped_device {struct dm_target_io* bs; } ;
struct dm_target_io {TYPE_4__* io; int info; } ;
struct dm_target {TYPE_1__* type; } ;
struct bio {struct dm_target_io* bi_private; int * bi_end_io; int bi_bdev; int bi_sector; } ;
typedef int sector_t ;
struct TYPE_8__ {struct mapped_device* md; TYPE_3__* bio; int io_count; } ;
struct TYPE_7__ {TYPE_2__* bi_bdev; } ;
struct TYPE_6__ {int bd_dev; } ;
struct TYPE_5__ {int (* map ) (struct dm_target*,struct bio*,int *) ;} ;


 int BUG () ;
 int DMWARN (char*,int) ;
 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_REQUEUE ;
 int atomic_inc (int *) ;
 int bdev_get_queue (int ) ;
 int bio_put (struct bio*) ;
 int * clone_endio ;
 int dec_pending (TYPE_4__*,int) ;
 int free_tio (struct mapped_device*,struct dm_target_io*) ;
 int generic_make_request (struct bio*) ;
 int stub1 (struct dm_target*,struct bio*,int *) ;
 int trace_block_remap (int ,struct bio*,int ,int ) ;

__attribute__((used)) static void __map_bio(struct dm_target *ti, struct bio *clone,
        struct dm_target_io *tio)
{
 int r;
 sector_t sector;
 struct mapped_device *md;

 clone->bi_end_io = clone_endio;
 clone->bi_private = tio;






 atomic_inc(&tio->io->io_count);
 sector = clone->bi_sector;
 r = ti->type->map(ti, clone, &tio->info);
 if (r == DM_MAPIO_REMAPPED) {


  trace_block_remap(bdev_get_queue(clone->bi_bdev), clone,
        tio->io->bio->bi_bdev->bd_dev, sector);

  generic_make_request(clone);
 } else if (r < 0 || r == DM_MAPIO_REQUEUE) {

  md = tio->io->md;
  dec_pending(tio->io, r);



  clone->bi_end_io = ((void*)0);
  clone->bi_private = md->bs;
  bio_put(clone);
  free_tio(md, tio);
 } else if (r) {
  DMWARN("unimplemented target map return value: %d", r);
  BUG();
 }
}
