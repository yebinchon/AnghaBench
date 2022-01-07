
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int q; struct dm_rq_target_io* end_io_data; } ;
struct mapped_device {int dummy; } ;
struct dm_target {TYPE_1__* type; } ;
struct dm_rq_target_io {int orig; int info; struct dm_target* ti; } ;
struct TYPE_2__ {int (* map_rq ) (struct dm_target*,struct request*,int *) ;} ;


 int BUG () ;
 int DMWARN (char*,int) ;



 int blk_rq_pos (int ) ;
 int disk_devt (int ) ;
 int dm_disk (struct mapped_device*) ;
 int dm_dispatch_request (struct request*) ;
 int dm_kill_unmapped_request (struct request*,int) ;
 int dm_requeue_unmapped_request (struct request*) ;
 int stub1 (struct dm_target*,struct request*,int *) ;
 int trace_block_rq_remap (int ,struct request*,int ,int ) ;

__attribute__((used)) static int map_request(struct dm_target *ti, struct request *clone,
         struct mapped_device *md)
{
 int r, requeued = 0;
 struct dm_rq_target_io *tio = clone->end_io_data;

 tio->ti = ti;
 r = ti->type->map_rq(ti, clone, &tio->info);
 switch (r) {
 case 128:

  break;
 case 130:

  trace_block_rq_remap(clone->q, clone, disk_devt(dm_disk(md)),
         blk_rq_pos(tio->orig));
  dm_dispatch_request(clone);
  break;
 case 129:

  dm_requeue_unmapped_request(clone);
  requeued = 1;
  break;
 default:
  if (r > 0) {
   DMWARN("unimplemented target map return value: %d", r);
   BUG();
  }


  dm_kill_unmapped_request(clone, r);
  break;
 }

 return requeued;
}
