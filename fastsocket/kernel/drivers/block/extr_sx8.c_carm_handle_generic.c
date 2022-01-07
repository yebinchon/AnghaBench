
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carm_request {int dummy; } ;
struct carm_host {int state; int fsm_task; } ;


 int DPRINTK (char*) ;
 int HST_ERROR ;
 int assert (int) ;
 int carm_end_rq (struct carm_host*,struct carm_request*,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static void carm_handle_generic(struct carm_host *host,
    struct carm_request *crq, int error,
    int cur_state, int next_state)
{
 DPRINTK("ENTER\n");

 carm_end_rq(host, crq, error);

 assert(host->state == cur_state);
 if (error)
  host->state = HST_ERROR;
 else
  host->state = next_state;
 schedule_work(&host->fsm_task);
}
