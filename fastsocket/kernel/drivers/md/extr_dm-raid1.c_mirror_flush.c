
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mirror_set {int nr_mirrors; struct mirror* mirror; int io_client; } ;
struct mirror {TYPE_3__* dev; } ;
struct dm_target {struct mirror_set* private; } ;
struct TYPE_4__ {int * addr; } ;
struct TYPE_5__ {TYPE_1__ ptr; int type; } ;
struct dm_io_request {int client; TYPE_2__ mem; int bi_rw; } ;
struct dm_io_region {scalar_t__ count; scalar_t__ sector; int bdev; } ;
struct TYPE_6__ {int bdev; } ;


 int DM_IO_KMEM ;
 int DM_RAID1_FLUSH_ERROR ;
 int EIO ;
 int WRITE_FLUSH ;
 int dm_io (struct dm_io_request*,unsigned int,struct dm_io_region*,unsigned long*) ;
 int fail_mirror (struct mirror*,int ) ;
 scalar_t__ test_bit (unsigned int,unsigned long*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mirror_flush(struct dm_target *ti)
{
 struct mirror_set *ms = ti->private;
 unsigned long error_bits;

 unsigned int i;
 struct dm_io_region io[ms->nr_mirrors];
 struct mirror *m;
 struct dm_io_request io_req = {
  .bi_rw = WRITE_FLUSH,
  .mem.type = DM_IO_KMEM,
  .mem.ptr.addr = ((void*)0),
  .client = ms->io_client,
 };

 for (i = 0, m = ms->mirror; i < ms->nr_mirrors; i++, m++) {
  io[i].bdev = m->dev->bdev;
  io[i].sector = 0;
  io[i].count = 0;
 }

 error_bits = -1;
 dm_io(&io_req, ms->nr_mirrors, io, &error_bits);
 if (unlikely(error_bits != 0)) {
  for (i = 0; i < ms->nr_mirrors; i++)
   if (test_bit(i, &error_bits))
    fail_mirror(ms->mirror + i,
         DM_RAID1_FLUSH_ERROR);
  return -EIO;
 }

 return 0;
}
