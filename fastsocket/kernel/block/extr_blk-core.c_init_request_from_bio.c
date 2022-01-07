
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int cmd_flags; int q; int ioprio; int __sector; scalar_t__ errors; int cmd_type; int cpu; } ;
struct bio {int bi_rw; int bi_sector; int bi_comp_cpu; } ;


 int BIO_RW_AHEAD ;
 int BIO_RW_BARRIER ;
 int BIO_RW_DISCARD ;
 int BIO_RW_FLUSH ;
 int BIO_RW_FUA ;
 int BIO_RW_META ;
 int BIO_RW_NOIDLE ;
 int BIO_RW_SYNCIO ;
 int REQ_DISCARD ;
 int REQ_FAILFAST_MASK ;
 int REQ_FLUSH ;
 int REQ_FUA ;
 int REQ_HARDBARRIER ;
 int REQ_NOIDLE ;
 int REQ_RW_META ;
 int REQ_RW_SYNC ;
 int REQ_TYPE_FS ;
 int bio_prio (struct bio*) ;
 scalar_t__ bio_rw_flagged (struct bio*,int ) ;
 int blk_rq_bio_prep (int ,struct request*,struct bio*) ;

void init_request_from_bio(struct request *req, struct bio *bio)
{
 req->cpu = bio->bi_comp_cpu;
 req->cmd_type = REQ_TYPE_FS;





 if (bio_rw_flagged(bio, BIO_RW_AHEAD))
  req->cmd_flags |= REQ_FAILFAST_MASK;
 else
  req->cmd_flags |= bio->bi_rw & REQ_FAILFAST_MASK;

 if (bio_rw_flagged(bio, BIO_RW_DISCARD))
  req->cmd_flags |= REQ_DISCARD;
 if (bio_rw_flagged(bio, BIO_RW_BARRIER))
  req->cmd_flags |= REQ_HARDBARRIER;
 if (bio_rw_flagged(bio, BIO_RW_SYNCIO))
  req->cmd_flags |= REQ_RW_SYNC;
 if (bio_rw_flagged(bio, BIO_RW_META))
  req->cmd_flags |= REQ_RW_META;
 if (bio_rw_flagged(bio, BIO_RW_NOIDLE))
  req->cmd_flags |= REQ_NOIDLE;

 if (bio_rw_flagged(bio, BIO_RW_FLUSH))
  req->cmd_flags |= REQ_FLUSH;
 if (bio_rw_flagged(bio, BIO_RW_FUA))
  req->cmd_flags |= REQ_FUA;

 req->errors = 0;
 req->__sector = bio->bi_sector;
 req->ioprio = bio_prio(bio);
 blk_rq_bio_prep(req->q, req, bio);
}
