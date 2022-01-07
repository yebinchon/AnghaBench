
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pstore {int metadata_wq; int io_client; TYPE_1__* store; } ;
struct mdata_req {int result; int work; struct dm_io_request* io_req; struct dm_io_region* where; } ;
struct TYPE_9__ {int * fn; } ;
struct TYPE_7__ {void* vma; } ;
struct TYPE_8__ {TYPE_2__ ptr; int type; } ;
struct dm_io_request {int bi_rw; TYPE_4__ notify; int client; TYPE_3__ mem; } ;
struct dm_io_region {int sector; int count; int bdev; } ;
typedef int chunk_t ;
struct TYPE_10__ {int bdev; } ;
struct TYPE_6__ {int chunk_size; int snap; } ;


 int DM_IO_VMA ;
 int INIT_WORK (int *,int ) ;
 int dm_io (struct dm_io_request*,int,struct dm_io_region*,int *) ;
 TYPE_5__* dm_snap_cow (int ) ;
 int do_metadata ;
 int flush_workqueue (int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int chunk_io(struct pstore *ps, void *area, chunk_t chunk, int rw,
      int metadata)
{
 struct dm_io_region where = {
  .bdev = dm_snap_cow(ps->store->snap)->bdev,
  .sector = ps->store->chunk_size * chunk,
  .count = ps->store->chunk_size,
 };
 struct dm_io_request io_req = {
  .bi_rw = rw,
  .mem.type = DM_IO_VMA,
  .mem.ptr.vma = area,
  .client = ps->io_client,
  .notify.fn = ((void*)0),
 };
 struct mdata_req req;

 if (!metadata)
  return dm_io(&io_req, 1, &where, ((void*)0));

 req.where = &where;
 req.io_req = &io_req;





 INIT_WORK(&req.work, do_metadata);
 queue_work(ps->metadata_wq, &req.work);
 flush_workqueue(ps->metadata_wq);

 return req.result;
}
