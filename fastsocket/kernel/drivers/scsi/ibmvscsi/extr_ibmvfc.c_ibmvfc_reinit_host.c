
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {scalar_t__ action; int reinit; int work_wait_q; int host; } ;


 scalar_t__ IBMVFC_HOST_ACTION_NONE ;
 int IBMVFC_HOST_ACTION_QUERY ;
 int IBMVFC_INITIALIZING ;
 int ibmvfc_set_host_action (struct ibmvfc_host*,int ) ;
 int ibmvfc_set_host_state (struct ibmvfc_host*,int ) ;
 int scsi_block_requests (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void ibmvfc_reinit_host(struct ibmvfc_host *vhost)
{
 if (vhost->action == IBMVFC_HOST_ACTION_NONE) {
  if (!ibmvfc_set_host_state(vhost, IBMVFC_INITIALIZING)) {
   scsi_block_requests(vhost->host);
   ibmvfc_set_host_action(vhost, IBMVFC_HOST_ACTION_QUERY);
  }
 } else
  vhost->reinit = 1;

 wake_up(&vhost->work_wait_q);
}
