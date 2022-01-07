
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {unsigned int cmd_flags; } ;


 unsigned int REQ_FLUSH ;
 unsigned int REQ_FSEQ_DATA ;
 unsigned int REQ_FSEQ_POSTFLUSH ;
 unsigned int REQ_FSEQ_PREFLUSH ;
 unsigned int REQ_FUA ;
 scalar_t__ blk_rq_sectors (struct request*) ;

__attribute__((used)) static unsigned int blk_flush_policy(unsigned int fflags, struct request *rq)
{
 unsigned int policy = 0;

 if (fflags & REQ_FLUSH) {
  if (rq->cmd_flags & REQ_FLUSH)
   policy |= REQ_FSEQ_PREFLUSH;
  if (blk_rq_sectors(rq))
   policy |= REQ_FSEQ_DATA;
  if (!(fflags & REQ_FUA) && (rq->cmd_flags & REQ_FUA))
   policy |= REQ_FSEQ_POSTFLUSH;
 }
 return policy;
}
