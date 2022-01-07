
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibmvfc_target {int kref; int scsi_id; scalar_t__ logo_rcvd; struct ibmvfc_host* vhost; } ;
struct TYPE_4__ {int version; int length; int opcode; } ;
struct ibmvfc_port_login {int scsi_id; TYPE_2__ common; } ;
struct ibmvfc_host {scalar_t__ discovery_threads; } ;
struct TYPE_3__ {struct ibmvfc_port_login plogi; } ;
struct ibmvfc_event {TYPE_1__ iu; struct ibmvfc_target* tgt; } ;


 int IBMVFC_MAD_FORMAT ;
 int IBMVFC_PORT_LOGIN ;
 int IBMVFC_TGT_ACTION_INIT_WAIT ;
 int IBMVFC_TGT_ACTION_NONE ;
 int default_timeout ;
 scalar_t__ disc_threads ;
 struct ibmvfc_event* ibmvfc_get_event (struct ibmvfc_host*) ;
 int ibmvfc_init_event (struct ibmvfc_event*,int ,int ) ;
 int ibmvfc_release_tgt ;
 scalar_t__ ibmvfc_send_event (struct ibmvfc_event*,struct ibmvfc_host*,int ) ;
 int ibmvfc_set_tgt_action (struct ibmvfc_target*,int ) ;
 int ibmvfc_tgt_plogi_done ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int memset (struct ibmvfc_port_login*,int ,int) ;
 int tgt_dbg (struct ibmvfc_target*,char*) ;

__attribute__((used)) static void ibmvfc_tgt_send_plogi(struct ibmvfc_target *tgt)
{
 struct ibmvfc_port_login *plogi;
 struct ibmvfc_host *vhost = tgt->vhost;
 struct ibmvfc_event *evt;

 if (vhost->discovery_threads >= disc_threads)
  return;

 kref_get(&tgt->kref);
 tgt->logo_rcvd = 0;
 evt = ibmvfc_get_event(vhost);
 vhost->discovery_threads++;
 ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_INIT_WAIT);
 ibmvfc_init_event(evt, ibmvfc_tgt_plogi_done, IBMVFC_MAD_FORMAT);
 evt->tgt = tgt;
 plogi = &evt->iu.plogi;
 memset(plogi, 0, sizeof(*plogi));
 plogi->common.version = 1;
 plogi->common.opcode = IBMVFC_PORT_LOGIN;
 plogi->common.length = sizeof(*plogi);
 plogi->scsi_id = tgt->scsi_id;

 if (ibmvfc_send_event(evt, vhost, default_timeout)) {
  vhost->discovery_threads--;
  ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_NONE);
  kref_put(&tgt->kref, ibmvfc_release_tgt);
 } else
  tgt_dbg(tgt, "Sent port login\n");
}
