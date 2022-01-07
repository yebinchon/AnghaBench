
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {scalar_t__ cmd_type; } ;


 int EIO ;
 scalar_t__ REQ_TYPE_FS ;
 int __blk_end_request_all (struct request*,int ) ;
 struct request* blk_peek_request (struct request_queue*) ;
 int blk_start_request (struct request*) ;

struct request *ace_get_next_request(struct request_queue * q)
{
 struct request *req;

 while ((req = blk_peek_request(q)) != ((void*)0)) {
  if (req->cmd_type == REQ_TYPE_FS)
   break;
  blk_start_request(req);
  __blk_end_request_all(req, -EIO);
 }
 return req;
}
