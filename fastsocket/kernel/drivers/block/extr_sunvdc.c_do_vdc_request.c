
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;


 int EIO ;
 int __blk_end_request_all (struct request*,int ) ;
 scalar_t__ __send_request (struct request*) ;
 struct request* blk_fetch_request (struct request_queue*) ;

__attribute__((used)) static void do_vdc_request(struct request_queue *q)
{
 while (1) {
  struct request *req = blk_fetch_request(q);

  if (!req)
   break;

  if (__send_request(req) < 0)
   __blk_end_request_all(req, -EIO);
 }
}
