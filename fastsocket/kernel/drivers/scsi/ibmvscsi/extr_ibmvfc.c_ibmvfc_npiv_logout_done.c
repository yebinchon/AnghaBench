
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ibmvfc_host {int action; int sent; } ;
struct ibmvfc_event {TYPE_3__* xfer_iu; struct ibmvfc_host* vhost; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_5__ {TYPE_1__ common; } ;
struct TYPE_6__ {TYPE_2__ npiv_logout; } ;


 int IBMVFC_HOST_ACTION_LOGO_WAIT ;





 int ibmvfc_dbg (struct ibmvfc_host*,char*,int) ;
 int ibmvfc_free_event (struct ibmvfc_event*) ;
 int ibmvfc_hard_reset_host (struct ibmvfc_host*) ;
 int ibmvfc_init_host (struct ibmvfc_host*) ;
 int list_empty (int *) ;

__attribute__((used)) static void ibmvfc_npiv_logout_done(struct ibmvfc_event *evt)
{
 struct ibmvfc_host *vhost = evt->vhost;
 u32 mad_status = evt->xfer_iu->npiv_logout.common.status;

 ibmvfc_free_event(evt);

 switch (mad_status) {
 case 128:
  if (list_empty(&vhost->sent) &&
      vhost->action == IBMVFC_HOST_ACTION_LOGO_WAIT) {
   ibmvfc_init_host(vhost);
   return;
  }
  break;
 case 130:
 case 129:
 case 132:
 case 131:
 default:
  ibmvfc_dbg(vhost, "NPIV Logout failed. 0x%X\n", mad_status);
  break;
 }

 ibmvfc_hard_reset_host(vhost);
}
