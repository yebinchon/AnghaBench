
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u16 ;
struct nes_vnic {int local_ipaddr; } ;
struct TYPE_2__ {int client; void* rcv_wscale; void* snd_wscale; int rcv_wnd; int snd_wnd; int max_snd_wnd; int loc_seq_num; int rcv_nxt; } ;
struct nes_cm_node {int cm_id; int rem_port; int rem_addr; int cm_core; int state; void* mpa_frame_size; int * mpa_frame_buf; TYPE_1__ tcp_cntxt; struct nes_cm_node* loopbackpartner; } ;
struct nes_cm_listener {int cm_id; } ;
struct nes_cm_info {scalar_t__ loc_addr; scalar_t__ rem_addr; int cm_id; int loc_port; int rem_port; } ;
struct nes_cm_core {int dummy; } ;
struct ietf_mpa_v2 {int dummy; } ;


 void* NES_CM_DEFAULT_RCV_WND_SCALE ;
 int NES_CM_EVENT_ABORTED ;
 int NES_CM_EVENT_MPA_REQ ;
 int NES_CM_LISTENER_ACTIVE_STATE ;
 int NES_CM_STATE_MPAREQ_RCVD ;
 int NES_CM_STATE_SYN_SENT ;
 int NES_CM_STATE_TSA ;
 int NES_DBG_CM ;
 int atomic_inc (int *) ;
 int cm_loopbacks ;
 int create_event (struct nes_cm_node*,int ) ;
 struct nes_cm_listener* find_listener (struct nes_cm_core*,int ,int ,int ) ;
 struct nes_cm_node* make_cm_node (struct nes_cm_core*,struct nes_vnic*,struct nes_cm_info*,struct nes_cm_listener*) ;
 int memcpy (int *,void*,void*) ;
 int nes_debug (int ,char*,int ,int ,struct nes_cm_node*,int ) ;
 int ntohl (int ) ;
 int rem_ref_cm_node (int ,struct nes_cm_node*) ;
 int send_syn (struct nes_cm_node*,int ,int *) ;

__attribute__((used)) static struct nes_cm_node *mini_cm_connect(struct nes_cm_core *cm_core,
        struct nes_vnic *nesvnic, u16 private_data_len,
        void *private_data, struct nes_cm_info *cm_info)
{
 int ret = 0;
 struct nes_cm_node *cm_node;
 struct nes_cm_listener *loopbackremotelistener;
 struct nes_cm_node *loopbackremotenode;
 struct nes_cm_info loopback_cm_info;
 u8 *start_buff;


 cm_node = make_cm_node(cm_core, nesvnic, cm_info, ((void*)0));
 if (!cm_node)
  return ((void*)0);


 cm_node->tcp_cntxt.client = 1;
 cm_node->tcp_cntxt.rcv_wscale = NES_CM_DEFAULT_RCV_WND_SCALE;

 if (cm_info->loc_addr == cm_info->rem_addr) {
  loopbackremotelistener = find_listener(cm_core,
             ntohl(nesvnic->local_ipaddr), cm_node->rem_port,
             NES_CM_LISTENER_ACTIVE_STATE);
  if (loopbackremotelistener == ((void*)0)) {
   create_event(cm_node, NES_CM_EVENT_ABORTED);
  } else {
   loopback_cm_info = *cm_info;
   loopback_cm_info.loc_port = cm_info->rem_port;
   loopback_cm_info.rem_port = cm_info->loc_port;
   loopback_cm_info.cm_id = loopbackremotelistener->cm_id;
   loopbackremotenode = make_cm_node(cm_core, nesvnic,
         &loopback_cm_info, loopbackremotelistener);
   if (!loopbackremotenode) {
    rem_ref_cm_node(cm_node->cm_core, cm_node);
    return ((void*)0);
   }
   atomic_inc(&cm_loopbacks);
   loopbackremotenode->loopbackpartner = cm_node;
   loopbackremotenode->tcp_cntxt.rcv_wscale =
    NES_CM_DEFAULT_RCV_WND_SCALE;
   cm_node->loopbackpartner = loopbackremotenode;
   memcpy(loopbackremotenode->mpa_frame_buf, private_data,
          private_data_len);
   loopbackremotenode->mpa_frame_size = private_data_len;



   cm_node->state = NES_CM_STATE_TSA;
   cm_node->tcp_cntxt.rcv_nxt =
    loopbackremotenode->tcp_cntxt.loc_seq_num;
   loopbackremotenode->tcp_cntxt.rcv_nxt =
    cm_node->tcp_cntxt.loc_seq_num;
   cm_node->tcp_cntxt.max_snd_wnd =
    loopbackremotenode->tcp_cntxt.rcv_wnd;
   loopbackremotenode->tcp_cntxt.max_snd_wnd =
    cm_node->tcp_cntxt.rcv_wnd;
   cm_node->tcp_cntxt.snd_wnd =
    loopbackremotenode->tcp_cntxt.rcv_wnd;
   loopbackremotenode->tcp_cntxt.snd_wnd =
    cm_node->tcp_cntxt.rcv_wnd;
   cm_node->tcp_cntxt.snd_wscale =
    loopbackremotenode->tcp_cntxt.rcv_wscale;
   loopbackremotenode->tcp_cntxt.snd_wscale =
    cm_node->tcp_cntxt.rcv_wscale;
   loopbackremotenode->state = NES_CM_STATE_MPAREQ_RCVD;
   create_event(loopbackremotenode, NES_CM_EVENT_MPA_REQ);
  }
  return cm_node;
 }

 start_buff = &cm_node->mpa_frame_buf[0] + sizeof(struct ietf_mpa_v2);
 cm_node->mpa_frame_size = private_data_len;

 memcpy(start_buff, private_data, private_data_len);


 cm_node->state = NES_CM_STATE_SYN_SENT;
 ret = send_syn(cm_node, 0, ((void*)0));

 if (ret) {

  nes_debug(NES_DBG_CM, "Api - connect() FAILED: dest "
     "addr=0x%08X, port=0x%04x, cm_node=%p, cm_id = %p.\n",
     cm_node->rem_addr, cm_node->rem_port, cm_node,
     cm_node->cm_id);
  rem_ref_cm_node(cm_node->cm_core, cm_node);
  cm_node = ((void*)0);
 }

 if (cm_node) {
  nes_debug(NES_DBG_CM, "Api - connect(): dest addr=0x%08X,"
     "port=0x%04x, cm_node=%p, cm_id = %p.\n",
     cm_node->rem_addr, cm_node->rem_port, cm_node,
     cm_node->cm_id);
 }

 return cm_node;
}
