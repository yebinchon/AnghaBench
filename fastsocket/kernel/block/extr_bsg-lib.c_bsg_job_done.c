
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct request {int errors; int sense_len; unsigned int resid_len; struct request* next_rq; } ;
struct bsg_job {int reply_len; struct request* req; } ;


 int WARN_ON (int) ;
 int blk_complete_request (struct request*) ;
 scalar_t__ min (unsigned int,unsigned int) ;

void bsg_job_done(struct bsg_job *job, int result,
    unsigned int reply_payload_rcv_len)
{
 struct request *req = job->req;
 struct request *rsp = req->next_rq;
 int err;

 err = job->req->errors = result;
 if (err < 0)

  job->req->sense_len = sizeof(u32);
 else
  job->req->sense_len = job->reply_len;

 req->resid_len = 0;

 if (rsp) {
  WARN_ON(reply_payload_rcv_len > rsp->resid_len);


  rsp->resid_len -= min(reply_payload_rcv_len, rsp->resid_len);
 }
 blk_complete_request(req);
}
