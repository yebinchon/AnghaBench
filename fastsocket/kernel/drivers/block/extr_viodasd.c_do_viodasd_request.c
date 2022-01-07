
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {scalar_t__ cmd_type; } ;


 int EIO ;
 scalar_t__ REQ_TYPE_FS ;
 scalar_t__ VIOMAXREQ ;
 struct request* blk_fetch_request (struct request_queue*) ;
 int blk_rq_sectors (struct request*) ;
 scalar_t__ num_req_outstanding ;
 scalar_t__ send_request (struct request*) ;
 int viodasd_end_request (struct request*,int ,int ) ;

__attribute__((used)) static void do_viodasd_request(struct request_queue *q)
{
 struct request *req;






 while (num_req_outstanding < VIOMAXREQ) {
  req = blk_fetch_request(q);
  if (req == ((void*)0))
   return;

  if (req->cmd_type != REQ_TYPE_FS) {
   viodasd_end_request(req, -EIO, blk_rq_sectors(req));
   continue;
  }

  if (send_request(req) != 0)
   viodasd_end_request(req, -EIO, blk_rq_sectors(req));
 }
}
