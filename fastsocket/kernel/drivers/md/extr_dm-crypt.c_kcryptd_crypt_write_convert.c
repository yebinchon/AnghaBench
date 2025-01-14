
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int offset_in; int idx_in; int pending; scalar_t__ idx_out; struct bio* bio_out; } ;
struct dm_crypt_io {struct dm_crypt_io* base_io; TYPE_3__ ctx; TYPE_2__* base_bio; TYPE_1__* target; int sector; int error; } ;
struct crypt_config {int dummy; } ;
struct bio {scalar_t__ bi_size; } ;
typedef int sector_t ;
struct TYPE_7__ {unsigned int bi_size; } ;
struct TYPE_6__ {struct crypt_config* private; } ;


 int BLK_RW_ASYNC ;
 int ENOMEM ;
 int HZ ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ bio_sectors (struct bio*) ;
 int congestion_wait (int ,int) ;
 struct bio* crypt_alloc_buffer (struct dm_crypt_io*,unsigned int,unsigned int*) ;
 int crypt_convert (struct crypt_config*,TYPE_3__*) ;
 int crypt_convert_init (struct crypt_config*,TYPE_3__*,int *,TYPE_2__*,int ) ;
 int crypt_dec_pending (struct dm_crypt_io*) ;
 int crypt_inc_pending (struct dm_crypt_io*) ;
 struct dm_crypt_io* crypt_io_alloc (TYPE_1__*,TYPE_2__*,int ) ;
 int kcryptd_crypt_write_io_submit (struct dm_crypt_io*,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void kcryptd_crypt_write_convert(struct dm_crypt_io *io)
{
 struct crypt_config *cc = io->target->private;
 struct bio *clone;
 struct dm_crypt_io *new_io;
 int crypt_finished;
 unsigned out_of_pages = 0;
 unsigned remaining = io->base_bio->bi_size;
 sector_t sector = io->sector;
 int r;




 crypt_inc_pending(io);
 crypt_convert_init(cc, &io->ctx, ((void*)0), io->base_bio, sector);





 while (remaining) {
  clone = crypt_alloc_buffer(io, remaining, &out_of_pages);
  if (unlikely(!clone)) {
   io->error = -ENOMEM;
   break;
  }

  io->ctx.bio_out = clone;
  io->ctx.idx_out = 0;

  remaining -= clone->bi_size;
  sector += bio_sectors(clone);

  crypt_inc_pending(io);
  r = crypt_convert(cc, &io->ctx);
  crypt_finished = atomic_dec_and_test(&io->ctx.pending);


  if (crypt_finished) {
   kcryptd_crypt_write_io_submit(io, r, 0);





   if (unlikely(r < 0))
    break;

   io->sector = sector;
  }





  if (unlikely(out_of_pages))
   congestion_wait(BLK_RW_ASYNC, HZ/100);





  if (unlikely(!crypt_finished && remaining)) {
   new_io = crypt_io_alloc(io->target, io->base_bio,
      sector);
   crypt_inc_pending(new_io);
   crypt_convert_init(cc, &new_io->ctx, ((void*)0),
        io->base_bio, sector);
   new_io->ctx.idx_in = io->ctx.idx_in;
   new_io->ctx.offset_in = io->ctx.offset_in;





   if (!io->base_io)
    new_io->base_io = io;
   else {
    new_io->base_io = io->base_io;
    crypt_inc_pending(io->base_io);
    crypt_dec_pending(io);
   }

   io = new_io;
  }
 }

 crypt_dec_pending(io);
}
