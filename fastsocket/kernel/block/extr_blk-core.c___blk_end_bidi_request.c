
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 int blk_finish_request (struct request*,int) ;
 scalar_t__ blk_update_bidi_request (struct request*,int,unsigned int,unsigned int) ;

__attribute__((used)) static bool __blk_end_bidi_request(struct request *rq, int error,
       unsigned int nr_bytes, unsigned int bidi_bytes)
{
 if (blk_update_bidi_request(rq, error, nr_bytes, bidi_bytes))
  return 1;

 blk_finish_request(rq, error);

 return 0;
}
