
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct carm_request {unsigned int tag; int rq; scalar_t__ msg_bucket; int msg_subtype; int msg_type; } ;
struct carm_msg_ioctl {int subtype; int type; } ;
struct carm_host {int oob_q; } ;
typedef unsigned int (* carm_sspc_t ) (struct carm_host*,unsigned int,void*) ;


 int BUG_ON (int) ;
 int DPRINTK (char*,unsigned int) ;
 int ENOMEM ;
 int blk_insert_request (int ,int ,int,struct carm_request*) ;
 struct carm_request* carm_get_special (struct carm_host*) ;
 int carm_lookup_bucket (unsigned int) ;
 void* carm_ref_msg (struct carm_host*,unsigned int) ;

__attribute__((used)) static int carm_send_special (struct carm_host *host, carm_sspc_t func)
{
 struct carm_request *crq;
 struct carm_msg_ioctl *ioc;
 void *mem;
 unsigned int idx, msg_size;
 int rc;

 crq = carm_get_special(host);
 if (!crq)
  return -ENOMEM;

 idx = crq->tag;

 mem = carm_ref_msg(host, idx);

 msg_size = func(host, idx, mem);

 ioc = mem;
 crq->msg_type = ioc->type;
 crq->msg_subtype = ioc->subtype;
 rc = carm_lookup_bucket(msg_size);
 BUG_ON(rc < 0);
 crq->msg_bucket = (u32) rc;

 DPRINTK("blk_insert_request, tag == %u\n", idx);
 blk_insert_request(host->oob_q, crq->rq, 1, crq);

 return 0;
}
