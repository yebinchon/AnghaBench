
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 int WARN_ON (int) ;
 int blk_end_request (struct request*,int,int ) ;
 int blk_rq_err_bytes (struct request*) ;

bool blk_end_request_err(struct request *rq, int error)
{
 WARN_ON(error >= 0);
 return blk_end_request(rq, error, blk_rq_err_bytes(rq));
}
