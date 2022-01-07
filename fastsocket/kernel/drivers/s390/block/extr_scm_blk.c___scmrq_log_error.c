
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {int error; scalar_t__ retries; struct aob* aob; } ;
struct aob {int response; } ;


 int ETIMEDOUT ;
 int SCM_LOG (int,char*) ;
 int SCM_LOG_HEX (int,int *,int) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static void __scmrq_log_error(struct scm_request *scmrq)
{
 struct aob *aob = scmrq->aob;

 if (scmrq->error == -ETIMEDOUT)
  SCM_LOG(1, "Request timeout");
 else {
  SCM_LOG(1, "Request error");
  SCM_LOG_HEX(1, &aob->response, sizeof(aob->response));
 }
 if (scmrq->retries)
  SCM_LOG(1, "Retry request");
 else
  pr_err("An I/O operation to SCM failed with rc=%d\n",
         scmrq->error);
}
