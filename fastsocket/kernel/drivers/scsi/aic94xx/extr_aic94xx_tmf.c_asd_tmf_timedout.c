
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_completion_status {int tmf_state; } ;
struct asd_ascb {int completion; struct tasklet_completion_status* uldd_task; } ;


 int ASD_DPRINTK (char*) ;
 int TMF_RESP_FUNC_FAILED ;
 int complete (int ) ;

__attribute__((used)) static void asd_tmf_timedout(unsigned long data)
{
 struct asd_ascb *ascb = (void *) data;
 struct tasklet_completion_status *tcs = ascb->uldd_task;

 ASD_DPRINTK("tmf timed out\n");
 tcs->tmf_state = TMF_RESP_FUNC_FAILED;
 complete(ascb->completion);
}
