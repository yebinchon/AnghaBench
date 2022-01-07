
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 int blk_end_bidi_request (struct request*,int,unsigned int,int ) ;

bool blk_end_request(struct request *rq, int error, unsigned int nr_bytes)
{
 return blk_end_bidi_request(rq, error, nr_bytes, 0);
}
