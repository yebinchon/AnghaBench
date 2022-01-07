
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_request {int retries; void* callback_data; int callback; } ;
struct tape_device {TYPE_1__* discipline; } ;
struct request {int dummy; } ;
struct TYPE_2__ {int (* free_bread ) (struct tape_request*) ;struct tape_request* (* bread ) (struct tape_device*,struct request*) ;} ;


 int DBF_EVENT (int,char*) ;
 int DBF_LH (int,char*,struct tape_device*,struct request*) ;
 int EIO ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int PTR_ERR (struct tape_request*) ;
 int TAPEBLOCK_RETRIES ;
 int __tapeblock_end_request ;
 int blk_end_request_all (struct request*,int ) ;
 struct tape_request* stub1 (struct tape_device*,struct request*) ;
 int stub2 (struct tape_request*) ;
 int tape_do_io_async (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static int
tapeblock_start_request(struct tape_device *device, struct request *req)
{
 struct tape_request * ccw_req;
 int rc;

 DBF_LH(6, "tapeblock_start_request(%p, %p)\n", device, req);

 ccw_req = device->discipline->bread(device, req);
 if (IS_ERR(ccw_req)) {
  DBF_EVENT(1, "TBLOCK: bread failed\n");
  blk_end_request_all(req, -EIO);
  return PTR_ERR(ccw_req);
 }
 ccw_req->callback = __tapeblock_end_request;
 ccw_req->callback_data = (void *) req;
 ccw_req->retries = TAPEBLOCK_RETRIES;

 rc = tape_do_io_async(device, ccw_req);
 if (rc) {




  blk_end_request_all(req, -EIO);
  device->discipline->free_bread(ccw_req);
 }

 return rc;
}
