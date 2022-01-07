
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_req {int status; int start_count; int sccb; int command; } ;


 int EBUSY ;
 int HZ ;
 int SCLP_BUSY_INTERVAL ;
 int SCLP_REQ_FAILED ;
 int SCLP_REQ_RUNNING ;
 int SCLP_RETRY_INTERVAL ;
 int __sclp_set_request_timer (int,int ,int) ;
 int del_timer (int *) ;
 int sclp_request_timeout ;
 int sclp_request_timer ;
 scalar_t__ sclp_running_state ;
 scalar_t__ sclp_running_state_idle ;
 scalar_t__ sclp_running_state_running ;
 int sclp_service_call (int ,int ) ;

__attribute__((used)) static int
__sclp_start_request(struct sclp_req *req)
{
 int rc;

 if (sclp_running_state != sclp_running_state_idle)
  return 0;
 del_timer(&sclp_request_timer);
 rc = sclp_service_call(req->command, req->sccb);
 req->start_count++;

 if (rc == 0) {

  req->status = SCLP_REQ_RUNNING;
  sclp_running_state = sclp_running_state_running;
  __sclp_set_request_timer(SCLP_RETRY_INTERVAL * HZ,
      sclp_request_timeout, 1);
  return 0;
 } else if (rc == -EBUSY) {

  __sclp_set_request_timer(SCLP_BUSY_INTERVAL * HZ,
      sclp_request_timeout, 0);
  return 0;
 }

 req->status = SCLP_REQ_FAILED;
 return rc;
}
