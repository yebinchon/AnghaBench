
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tape_request {scalar_t__ rc; struct tape_device* device; } ;
struct TYPE_4__ {int block_position; int request_queue; } ;
struct tape_device {TYPE_2__ blk_data; int req_queue; TYPE_1__* discipline; } ;
struct request {int dummy; } ;
struct TYPE_3__ {int (* free_bread ) (struct tape_request*) ;} ;


 int DBF_LH (int,char*) ;
 int EIO ;
 int TAPEBLOCK_HSEC_S2B ;
 int blk_end_request_all (struct request*,int ) ;
 scalar_t__ blk_peek_request (int ) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int list_empty (int *) ;
 int stub1 (struct tape_request*) ;
 int tapeblock_trigger_requeue (struct tape_device*) ;

__attribute__((used)) static void
__tapeblock_end_request(struct tape_request *ccw_req, void *data)
{
 struct tape_device *device;
 struct request *req;

 DBF_LH(6, "__tapeblock_end_request()\n");

 device = ccw_req->device;
 req = (struct request *) data;
 blk_end_request_all(req, (ccw_req->rc == 0) ? 0 : -EIO);
 if (ccw_req->rc == 0)

  device->blk_data.block_position =
    (blk_rq_pos(req) + blk_rq_sectors(req)) >> TAPEBLOCK_HSEC_S2B;
 else

  device->blk_data.block_position = -1;
 device->discipline->free_bread(ccw_req);
 if (!list_empty(&device->req_queue) ||
     blk_peek_request(device->blk_data.request_queue))
  tapeblock_trigger_requeue(device);
}
