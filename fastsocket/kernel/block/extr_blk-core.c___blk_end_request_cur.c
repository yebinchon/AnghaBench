
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 int __blk_end_request (struct request*,int,int ) ;
 int blk_rq_cur_bytes (struct request*) ;

bool __blk_end_request_cur(struct request *rq, int error)
{
 return __blk_end_request(rq, error, blk_rq_cur_bytes(rq));
}
