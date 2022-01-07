
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct carm_request {struct request* rq; } ;
struct carm_host {int dummy; } ;


 int __blk_end_request_all (struct request*,int) ;
 int assert (int) ;
 int carm_put_request (struct carm_host*,struct carm_request*) ;

__attribute__((used)) static inline void carm_end_request_queued(struct carm_host *host,
        struct carm_request *crq,
        int error)
{
 struct request *req = crq->rq;
 int rc;

 __blk_end_request_all(req, error);

 rc = carm_put_request(host, crq);
 assert(rc == 0);
}
