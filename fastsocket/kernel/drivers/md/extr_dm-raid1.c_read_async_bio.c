
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mirror {TYPE_4__* ms; } ;
struct TYPE_7__ {struct bio* context; int fn; } ;
struct TYPE_5__ {scalar_t__ bvec; } ;
struct TYPE_6__ {TYPE_1__ ptr; int type; } ;
struct dm_io_request {int client; TYPE_3__ notify; TYPE_2__ mem; int bi_rw; } ;
struct dm_io_region {int dummy; } ;
struct bio {scalar_t__ bi_idx; scalar_t__ bi_io_vec; } ;
struct TYPE_8__ {int io_client; } ;


 int BUG_ON (int ) ;
 int DM_IO_BVEC ;
 int READ ;
 int bio_set_m (struct bio*,struct mirror*) ;
 int dm_io (struct dm_io_request*,int,struct dm_io_region*,int *) ;
 int map_region (struct dm_io_region*,struct mirror*,struct bio*) ;
 int read_callback ;

__attribute__((used)) static void read_async_bio(struct mirror *m, struct bio *bio)
{
 struct dm_io_region io;
 struct dm_io_request io_req = {
  .bi_rw = READ,
  .mem.type = DM_IO_BVEC,
  .mem.ptr.bvec = bio->bi_io_vec + bio->bi_idx,
  .notify.fn = read_callback,
  .notify.context = bio,
  .client = m->ms->io_client,
 };

 map_region(&io, m, bio);
 bio_set_m(bio, m);
 BUG_ON(dm_io(&io_req, 1, &io, ((void*)0)));
}
