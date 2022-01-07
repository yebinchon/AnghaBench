
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mirror_set {int nr_mirrors; struct mirror* mirror; int io_client; } ;
struct mirror {int dummy; } ;
struct TYPE_5__ {int * addr; scalar_t__ bvec; } ;
struct TYPE_6__ {TYPE_2__ ptr; int type; } ;
struct TYPE_4__ {struct bio* context; int fn; } ;
struct dm_io_request {int bi_rw; TYPE_3__ mem; int client; TYPE_1__ notify; } ;
struct dm_io_region {int dummy; } ;
struct bio {int bi_rw; scalar_t__ bi_idx; scalar_t__ bi_io_vec; } ;


 int BIO_DISCARD ;
 int BUG_ON (int ) ;
 int DM_IO_BVEC ;
 int DM_IO_KMEM ;
 int WRITE ;
 int WRITE_FLUSH_FUA ;
 int bio_set_m (struct bio*,int ) ;
 int dm_io (struct dm_io_request*,unsigned int,struct dm_io_region*,int *) ;
 int get_default_mirror (struct mirror_set*) ;
 int map_region (int ,struct mirror*,struct bio*) ;
 int write_callback ;

__attribute__((used)) static void do_write(struct mirror_set *ms, struct bio *bio)
{
 unsigned int i;
 struct dm_io_region io[ms->nr_mirrors], *dest = io;
 struct mirror *m;
 struct dm_io_request io_req = {
  .bi_rw = WRITE | (bio->bi_rw & WRITE_FLUSH_FUA),
  .mem.type = DM_IO_BVEC,
  .mem.ptr.bvec = bio->bi_io_vec + bio->bi_idx,
  .notify.fn = write_callback,
  .notify.context = bio,
  .client = ms->io_client,
 };

 if (bio->bi_rw & BIO_DISCARD) {
  io_req.bi_rw |= BIO_DISCARD;
  io_req.mem.type = DM_IO_KMEM;
  io_req.mem.ptr.addr = ((void*)0);
 }

 for (i = 0, m = ms->mirror; i < ms->nr_mirrors; i++, m++)
  map_region(dest++, m, bio);





 bio_set_m(bio, get_default_mirror(ms));

 BUG_ON(dm_io(&io_req, ms->nr_mirrors, io, ((void*)0)));
}
