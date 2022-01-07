
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {struct dm_rq_target_io* end_io_data; int end_io; int buffer; int sense; int cmd_len; int cmd; } ;
struct dm_rq_target_io {TYPE_1__* md; } ;
struct TYPE_2__ {int bs; } ;


 int GFP_ATOMIC ;
 int blk_rq_prep_clone (struct request*,struct request*,int ,int ,int ,struct dm_rq_target_io*) ;
 int dm_rq_bio_constructor ;
 int end_clone_request ;

__attribute__((used)) static int setup_clone(struct request *clone, struct request *rq,
         struct dm_rq_target_io *tio)
{
 int r;

 r = blk_rq_prep_clone(clone, rq, tio->md->bs, GFP_ATOMIC,
         dm_rq_bio_constructor, tio);
 if (r)
  return r;

 clone->cmd = rq->cmd;
 clone->cmd_len = rq->cmd_len;
 clone->sense = rq->sense;
 clone->buffer = rq->buffer;
 clone->end_io = end_clone_request;
 clone->end_io_data = tio;

 return 0;
}
