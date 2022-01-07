
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpages {int dummy; } ;
struct TYPE_2__ {int context; int fn; } ;
struct dm_io_request {TYPE_1__ notify; int bi_rw; int client; } ;
struct dm_io_region {int dummy; } ;


 int async_io (int ,unsigned int,struct dm_io_region*,int ,struct dpages*,int ,int ) ;
 int dp_init (struct dm_io_request*,struct dpages*) ;
 int sync_io (int ,unsigned int,struct dm_io_region*,int ,struct dpages*,unsigned long*) ;

int dm_io(struct dm_io_request *io_req, unsigned num_regions,
   struct dm_io_region *where, unsigned long *sync_error_bits)
{
 int r;
 struct dpages dp;

 r = dp_init(io_req, &dp);
 if (r)
  return r;

 if (!io_req->notify.fn)
  return sync_io(io_req->client, num_regions, where,
          io_req->bi_rw, &dp, sync_error_bits);

 return async_io(io_req->client, num_regions, where, io_req->bi_rw,
   &dp, io_req->notify.fn, io_req->notify.context);
}
