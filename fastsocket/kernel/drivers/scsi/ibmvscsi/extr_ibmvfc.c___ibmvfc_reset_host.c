
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {scalar_t__ action; int work_wait_q; int job_step; int host; scalar_t__ logged_in; } ;


 int IBMVFC_HOST_ACTION_LOGO ;
 scalar_t__ IBMVFC_HOST_ACTION_LOGO_WAIT ;
 int IBMVFC_INITIALIZING ;
 int ibmvfc_hard_reset_host (struct ibmvfc_host*) ;
 int ibmvfc_npiv_logout ;
 int ibmvfc_set_host_action (struct ibmvfc_host*,int ) ;
 int ibmvfc_set_host_state (struct ibmvfc_host*,int ) ;
 int scsi_block_requests (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void __ibmvfc_reset_host(struct ibmvfc_host *vhost)
{
 if (vhost->logged_in && vhost->action != IBMVFC_HOST_ACTION_LOGO_WAIT &&
     !ibmvfc_set_host_state(vhost, IBMVFC_INITIALIZING)) {
  scsi_block_requests(vhost->host);
  ibmvfc_set_host_action(vhost, IBMVFC_HOST_ACTION_LOGO);
  vhost->job_step = ibmvfc_npiv_logout;
  wake_up(&vhost->work_wait_q);
 } else
  ibmvfc_hard_reset_host(vhost);
}
